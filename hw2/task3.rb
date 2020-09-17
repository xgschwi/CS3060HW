# Task 3 by Xavier Gschwind

require "benchmark" # Used to calculate computation time of functions

def function3A(n = 0)
	fn1 = 0
	fn2 = 1

	sum = 0
	if (n == 1)
		return 0
	elsif (n == 2)
		return 1
	else
		i = 1
		while i < (n) # while i is less than the nth number calculate the sum of Fn-1 and Fn-2, where Fn-2 stores the sum
			sum = fn1 + fn2
			fn1 = fn2
			fn2 = sum
			i += 1
		end
		return sum
	end
end

# Recursively calls self to carry out Fibonacci sequence for up to n numbers
def function3B(n = 0)
	if n <= 1
		return n
	else
		return function3B(n-1) + function3B(n-2)
	end
end


x = 0
y = 0

# Calculates the computation time
Benchmark.bm(5) do |b|
	b.report("fA") {x = function3A(30)}
	b.report("fB") {y = function3B(30)}
end

# Prints the results
p "Here are the results from function A and function B: "
p x 
p y
