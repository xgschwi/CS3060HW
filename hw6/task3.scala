// Written by Xavier Gschwind

object Task3 {
  def main(args:Array[String])={
    val t1 = List("happy", "hurray", "hello")
    
    println("The distinct characters of List(\"happy\", \"hurray\", \"hello\") is: " + foo1(t1))

    val t2 = List(1,3,6,4,2)
   println("The sum of cubes of List(1,3,6,4,2) is: " + foo2(t2))
  }

  def foo1(t:List[String]):List[List[Char]]= t.map(word=> word.toList.distinct)

  def foo2(t:List[Int]):Int= t.foldLeft(0){case(f, l)=> f+(l*l*l)}
}
