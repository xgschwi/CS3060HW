# Task 5 written by Xavier Gschwind

# Class that is inherited from by Circle and Rectangle
class Shape
	attr_accessor :color

	# initializes color
	def initialize(color = "blue")
		@color = color
	end
end

class Circle < Shape
	attr_accessor :radius

	# Constant PI is declared for calculation
	PI = 3.14

	# Passes color to the Shape constructor and initializes radius
	def initialize(color = "blue", radius = 2.0)
		super(color)
		@radius = radius
	end

	# Calculates area of circle (A = pi*r_squared)
	def area()
		PI*radius*radius
	end
end

class Rectangle < Shape
	attr_accessor :width, :len

	# Passes color to Shape Constructor and initializes width and length
	def initialize(color = "blue", width = 1.0, len = 1.0)
		super(color)
		@width = width
		@len = len
	end

	# Calculates area of a rectangle (A = width*length)
	def area()
		width*len
	end
end

list = []

# Randomly generate a shape object with random color, radius, width, and/or length
for i in 1..50
	toss = rand(0..1)
	if toss == 0
		# rand is used to produce integers that are divided by 100 or 50 to produce random float
		shape = Rectangle.new(color = "red", rand(50..300)/100, rand(100..300)/50)
		list.push(shape)
	else
		shape = Circle.new(color = "green", rand(50..300)/100)
		list.push(shape)
	end
end

sum = 0

# Calculates sum of areas of all shapes
list.each{|shape| sum += shape.area()}
p sum
