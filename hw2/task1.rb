# Task 1.rb written by Xavier Gschwind
i = 1 # line counter

# substring to be searched for
inStr = ARGV[0] # Takes arguments from the command line

# fn should be "task1"
fn = ARGV[1]

while !File.exist?("#{fn}.txt") do
	p "Please enter a valid file name (task1) when you execute this program"
	exit
end

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
