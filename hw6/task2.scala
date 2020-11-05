import scala.io.StdIn
import scala.io._

object Task2 {
  val imgRegex = "(?i)<img.+?src=\"(.+?)\".*>".r
  def main(args:Array[String]):Unit={
    val source = scala.io.StdIn.readLine("Please input a webpage URL to process: ")
    println(source)
    val page = scala.io.Source.fromURL(source, "ISO-8859-1").mkString

    var sum = 0
   // val imgRegex = "(?i)<img.+?src=\"(.+?)\".*>".r
    val scriptRegex = "<script.*</script>".r
    var tot = imgRegex.findAllIn(page).matchData.toList.size
    println("The total number of images is: " + tot)

    var stot = scriptRegex.findAllIn(page).matchData.toList.size
    println("The total number of scripts is: " + stot)


    // Part B
    val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r

   // var list1 = List()
    
    val t1 = System.currentTimeMillis()
    var list1 = linkRegex.findAllIn(page).matchData.toList.map(_.group(1))
    list1 :+ source

    var double = 0
    var size = 0
    var cur = ""
    
    var res = list1.map{url => countImages(url)}
    val t2 = System.currentTimeMillis()
    

    if (res.size != 0) sum = res.reduce(_+_)
    println("The total amount of images is: " + sum)

    // Part C
    res.foreach{img => if(img > 2) double += 1}
    
    println("The number of pages with more than two images are: " + double)

    val t3 = System.currentTimeMillis()
    var list2 = linkRegex.findAllIn(page).matchData.toList.par.map(_.group(1))
    list2 :+ source

    val res2 = list2.map{url=> countImages(url)}
    
    val t4 = System.currentTimeMillis()


    // Part D

    println("The execution time of using a sequential collection was: " + (t2-t1)/1000 + " seconds")

    println("The execution time of using a parallel collection was: " + (t4-t3)/1000 + " seconds")
    
    println("The time saved was: " + ((t4-t3)-(t2-t1))/1000)

  }

  def countImages(url:String):Int= imgRegex.findAllIn(io.Source.fromURL(url, "ISO-8859-1").mkString).matchData.toList.size
  
}
