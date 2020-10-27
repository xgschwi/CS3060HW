// Written by Xavier Gschwind
import scala.io

object task3 {
  def main(args:Array[String]):Unit={
    for(i <- 5 to 54) {
      println("The cube of " + i + " is " + (i*i*i))
    }
  }
}
