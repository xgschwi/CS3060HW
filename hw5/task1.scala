// Written by Xavier Gschwind
import scala.io.Source
import java.io._
import scala.io.StdIn.readLine

object task1 {
  def main(args:Array[String]):Unit={
    val outF = new File("task1.txt")
    val prwrit = new PrintWriter(outF)
    var line = ""

    // Until 2 lines are reached, print line input
    for(i <- 0 until 2) {
      line = readLine()
      prwrit.write(line + '\n')
  }
  prwrit.close()
  }
}
