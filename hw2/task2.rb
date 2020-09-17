# Task2 written by Xavier Gschwind

def task2(a)
	p "Here are the squares of each element of the array: "
	a.each{|i| p "#{i*i}"} # prints the element times itself, which is the element's square

	p "Here is each element printed 4 times: "

	# prints each element 4 times before moving to next element
	a.each_slice(1){|i| for x in 1..4 
			print i end
			puts }


	b = a.select{|i| i % 3 == 0} # selects multiples of 3 and stores result in array b
	print "Here are all the multiples of 3 from the first array: "
	p b

	s = a.map{|i| i*i} # Builds array of squares and stores result into array s

	p "Here are the squares of the array: #{s}"

	p "Here is the product of all the items in the array: #{a.inject{|product, numbers| product * numbers}}" 
	# first product = numbers at first index, then product will be multiplied against the current index and stored in product, and moves on to next index
	# to repeat process until it reaches the end of the array. The final product will then be printed.

end

a = []

# Stores values between 10 and 80 into array a until the 40th element is filled (index 39)
for x in 0..39
	a[x] = rand(10..80)
end

# Calls the function that takes array a
task2(a)


