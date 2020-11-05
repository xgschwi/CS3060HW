import scala.util
import scala.io
class Shape(val color:String = "blue") {
}
class Rectangle(override val color:String, val width:Double = 1, val length:Int = 1){// extends Shape(color) {
//  def this(override val color:String, val width:Double, val length:Double) extends Shape(color){
 //   this(width, length)
//  }

  def area():Double = length*width
}

class Circle(override val color:String, val radius:Int = 2) extends Shape(color) {
//  def this(override val color:String, val radius:Double) extends Shape(color) {
//    this (radius)

  def area():Double = 3.14*radius*radius
}

def gen()={
  var list = scala.collection.mutable.Map()
  var r = 0
  for (i <- 0 to 50) {
    r = scala.util.Random.nextInt(1)
    if (r == 0) {
      var shape1 = new Circle("blue", scala.util.Random.nextInt(5))
      list += (i,shape1)
    }
    else {
      var shape2 = new Rectangle("blue", scala.util.Random.nextInt(5), scala.util.Random.nextInt(5))
      list += (i,shape2)
    }
  }
  list.foreach{case(x,y) => println(y)}
}

gen()
