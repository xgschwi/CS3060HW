class Shape
	attr_accessor :color
	def initialize(color = "blue")
		@color = color
	end
end

class Circle < Shape
	attr_accessor :radius

	PI = 3.14

	def initialize(color = "blue", radius = 2.0)
		super(color)
		@radius = radius
	end

	def area()
		PI*radius*radius
	end
end

class Rectangle < Shape
	attr_accessor :width, :len
	def initialize(color = "blue", width = 1.0, len = 1.0)
		super(color)
		@width = width
		@len = len
	end

	def area()
		width*len
	end
end

list = []

for i in 1..50
	toss = rand(0..1)
	if toss == 0
		shape = Rectangle.new()
		list.push(shape)
	else
		shape = Circle.new()
		list.push(shape)
	end
end

sum = 0

list.each{|shape| sum += shape.area()}
p sum

