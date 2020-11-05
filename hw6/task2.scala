import scala.io.StdIn
import scala.io._

object Task2 {
  def main(args:Array[String]):Unit={
    val source = scala.io.StdIn.readLine("Please input a webpage URL to process: ")
    //println(source)
    val page:URL = scala.io.Source.fromURL(args(0)).mkString

    val imgRegex = "(?i)<img.+?src=\"(http.+?)\".*?>(.+?)</img>".r
    val scriptRegex = "(?i)<script.*</script>".r
    var tot = imgRegex.findAllIn(page).matchData.toList.size
    println("The total number of images is: " + tot)

    var stot = scriptRegex.findAllIn(page).matchData.toList.size
    println("The total number of scripts is: " + stot)


    // Part B
    val linkRegex = "(?i)<a+?href=\"(http.?)\".*?>(.+?)</a>".r

    var list1 = List()
    
    linkRegex.findAllIn(page).matchData.toList.foreach{links => list1 :+ links}
    
    var double = 0
    var size = 0
    var cur = ""
    val t1 = System.currentTimeMillis()
    var list2 = list1.map{url =>
      cur = io.Source.fromURL(url).mkString
      imgRegex.findAllIn(cur).matchData.toList.size}

    var sum = list2.reduce(_+_)
    println("The total amount of images is: " + sum)

    // Part C
    list2.foreach{img => if(img > 2) double += 1}
    
    println("The number of pages with more than two images are: " + double)



 //   set.foreach{links => size = imgRegex.findAllIn(io.Source.fromURL(links).mkString).toList.size
   //             if(size > 2) double += 1
     //           tot += size
   // }


    
  }
}
