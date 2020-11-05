import scala.util
import scala.io
import scala.collection.mutable.ArrayBuffer

class Shape(val color:String = "blue") {
  def area():Double = 0
}


class Rectangle(override val color:String, val width:Double = 1, val length:Int = 1) extends Shape(color) {
  override def area():Double = length*width
}


class Circle(override val color:String, val radius:Int = 2) extends Shape(color) {
  override def area():Double = 3.14*radius*radius
}






def gen()={

  var list = ArrayBuffer[Shape]() 
  var r = 0

  for (i <- 0 to 50) {
    r = scala.util.Random.nextInt(1)

    if (r == 0) {
      var shape1 = new Circle("blue", scala.util.Random.nextInt(5))
      list += shape1
    }

    else {
      var shape2 = new Rectangle("blue", scala.util.Random.nextInt(5), scala.util.Random.nextInt(5))
      list += shape2
    }

  }

  var sum:Double = 0
  list.foreach{x => sum += x.area()}

  println("The total area of the 50 shapes are: " + sum)
}

gen()
