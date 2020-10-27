// Written by Xavier Gschwind

import scala.io.Source
import scala.io.StdIn.readLine
object task2 {
  def main(args:Array[String]):Unit={
    println("Please input a file to read from")

    val inFile = readLine()
    var flag = 0
    val fileH = Source.fromFile(inFile)

   // Array of lines: i in array of lines 
    for(i <- fileH.getLines().toArray) {
      var lines = i.split("\\s+") // Split each line into words
      for(j <- 0 to lines.length - 1) {
        if(lines(j).toString.toLowerCase == "ruby" && flag != 1)
          flag = 2
        else if (lines(j).toString.toLowerCase == "scala") {
          println("The file content is interesting")
          flag = 1
        }
      }
    }
      if(flag == 2) println("The file content is not interesting")
      else if(flag == 0) println("The file is meaningless")
  }
}
