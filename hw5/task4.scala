// Written by Xavier Gschwind
//
import scala.io.StdIn.readLine
import scala.io.Source
import scala.collection.mutable.HashMap
import java.io._

object task4 {
  def main(args:Array[String]):Unit={
     val inFile = "story.txt"
     val map = new scala.collection.mutable.HashMap[String, Int] // Stores words and number of occurences
     val text = Source.fromFile(inFile).getLines.mkString

     val words = text.split("[\\p{Punct}\\s]+") // Splits up words and removes punctuation

     var total = 0
     var distinct = 0
     var s = 0

     map.foreach { case(k,v) =>
       map -= k
       map += k.toLowerCase ->v
     } // Converts all words to lower case
    
     for (i <- words) {

       // If the word is not yet in the map
       if(!map.isDefinedAt(i)) {
         map+= i -> 0
         distinct += 1
       }
       map(i) += 1
       total += 1
     }

     var firstWord = words(0)
     var secondWord = words(0)
     
     map.foreach{ case(k,v) =>
       // If the occurence of a word is greater than that of the most frequent word, set most frequent word to k
       if (map(k) > map(firstWord)) {
         secondWord = firstWord
         firstWord = k
       }
       else if(map(k) > map(secondWord) && k != firstWord) secondWord = k
       if(!k.isEmpty() && k.charAt(0) == 's') s+= 1
     }

     println("The total number of words is: " + total)
     println("The number of Distinct Words is: " + distinct)
     println("The second most frequent word is: "+ secondWord + " " + map(secondWord))
     println("The number of words that start with s is " + s) 
  }
}
