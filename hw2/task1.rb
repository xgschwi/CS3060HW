# Task 1.rb written by Xavier Gschwind
i = 1 # line counter

print "Please enter a file that you would like to search in (omit file extension and use task1): "
fn = gets

fn.chomp! # remove endline character

while !File.exist?("#{fn}.txt") do
	print "Please enter a valid file name (task1): "
	fn = gets
	fn.chomp! # remove endline character
end

puts

print "Please enter a string that you would like to search for in this file: "
inStr = gets # "strings" was a great indicator to test where it is detected
inStr.chomp!

file = File.new("#{fn}.txt", "r")

puts

p "Here are all the lines that include this string:"

# Checks each line of input file for string pattern and prints line number and line of text
file.each do |line|
	if line.include? "#{inStr}"  # if line includes a substring that is provided
		line.chomp!
		p "#{i} #{line}"
	end
	i += 1
end
