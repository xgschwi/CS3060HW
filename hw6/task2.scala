import scala.io.StdIn
import scala.io._

object Task2 {

  val imgRegex = "(?i)<img.+?src=\"(.+?)\".*>".r

  def main(args:Array[String]):Unit={
    val source = scala.io.StdIn.readLine("Please input a webpage URL to process: ")
    println(source)

    val page = scala.io.Source.fromURL(source, "ISO-8859-1").mkString

    var sum = 0
   
    val scriptRegex = "<script.*</script>".r


    var tot = imgRegex.findAllIn(page).matchData.toList.size // total images
    println("The total number of images is: " + tot)

    var stot = scriptRegex.findAllIn(page).matchData.toList.size // total images
    println("The total number of scripts is: " + stot)


    // Part B
    val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r

    var double = 0
    var size = 0
    var cur = ""


    val t1 = System.currentTimeMillis()
    var list1 = linkRegex.findAllIn(page).matchData.toList.map(_.group(1))
    list1 :+ source

    
    var res = list1.map{url => countImages(url)}
    val t2 = System.currentTimeMillis()
    

    if (res.size != 0) sum = res.reduce(_+_) // sum of images
    println("The total amount of images is: " + sum)

    // Part C
    res.foreach{img => if(img > 2) double += 1} // Amount of pages with more than 2 images
    println("The number of pages with more than two images are: " + double)


    val t3 = System.currentTimeMillis()
    var list2 = linkRegex.findAllIn(page).matchData.toList.par.map(_.group(1))
    list2 :+ source


    val res2 = list2.map{url=> countImages(url)}
    
    val t4 = System.currentTimeMillis()


    // Part D

    println("The execution time of using a sequential collection was about: " + (t2-t1)/1000 + " seconds")

    println("The execution time of using a parallel collection was about: " + (t4-t3)/1000 + " seconds")
    
    println("The time saved with the parallel collection was about: " + ((t2-t1)-(t4-t3))/1000 + " seconds")

  }

  def countImages(url:String):Int= imgRegex.findAllIn(io.Source.fromURL(url, "ISO-8859-1").mkString).matchData.toList.size
  
}
