def task2(a)

	#A = []

	#i = 0
	#flag = true

	#p "Please enter as many numbers as you would like. Press enter while nothing is typed to continue "
	#num = gets.chomp

=begin while flag
	if num == ""
		flag = false
	end

	if flag
		A.push(num.to_i)
		num = gets.chomp
	end

end
=end

	p "Here are the squares of each element of the array: "
	a.each{|i| p "#{i*i}"}

	p "Here is each element printed 4 times: "

	a.each_slice(1){|i| for x in 1..4 
			print i end
			puts }


	b = a.select{|i| i % 3 == 0}
	print "Here are all the multiples of 3 from the first array: "
	p b

	s = a.map{|i| i*i}

	p "Here are the squares of the array: #{s}"

	p "Here is the product of all the items in the array: #{a.inject{|product, numbers| product * numbers}}"
end

a = []
for x in 0..39
	a[x] = rand(70) + 10
end
task2(a)


