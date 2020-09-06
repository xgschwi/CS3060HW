# CS 3060 Hw 1
# Written by Xavier Gschwind

def function1
    # Complete this function
	linesFile = File.new("savedLines.txt", "w") #linesFile stores savedLines file
       
       	i = 1

	print "Please enter 3 lines of text to be stored to a file: "

	while i < 4 do # takes input by lines and writes to the file
	 line = gets
	 linesFile.write(line)
	 i += 1
	end	 
	linesFile.close
end

def function2
    # Complete this function
	print "Please type the name of a text file. Suggesting \'f2Test': " 
	fileName = gets # Takes the name of the textfile, particularly f2Test.txt

	# Establishes patterns to be detected in text file
	a = /CPlusPlus|Python/ 
	b = /Ruby|Scala/

	# Initializes flags to describe the files below
	flag_a = false
	flag_b = false

	fileName.chomp! # Removes endline character in the string

	# Checks to see if file exists so no errors appear with nonexistent files
	while !File.exist?("#{fileName}.txt") do
		print "Please enter a valid text file: "
		fileName = gets
		fileName.chomp!
	end
	
	file = File.new("#{fileName}.txt", "r") # Opens desired file, fileName
	file.each do |line|

		# Detects text patterns and changes flag settings as needed
		if line =~a
			flag_a = true #includes C++ or Python
		elsif line =~b
			flag_b = true #includes Ruby or Scala
		end
	end

	if flag_a == true
		p "This file is important"
	elsif flag_b == true
		p "This file is extraordinary"
	else
		p "This file is unknown"
	end
end

def function3
    # Complete this function
	a = 1
     	
	# Cubes a from 1 to 50 and prints result
	for a in 1..50	
		p "The cube of integer #{a} is #{a*a*a}"
	end
end

def function4
    # Complete this function
	print "Choose a number between 10 and 200: "
	
	x = gets

	x = x.to_i

	while x < 10 || x > 200 do
		print "Choose a number in the given range: "
		x = gets
		x = x.to_i
	end

	heads = 0
	tails = 0

	arr = []

	x -= 1 # To accomodate for 0th index of array
	for i in 0..x # to fill array with "heads" or "tails" 
		arr[i] = rand(0..1)
	end

	for i in 0..x # Counter for heads and tails in the array
		if arr[i] == 1
			heads += 1
		elsif arr[i] == 0
			tails += 1
		end
	end
	
	p "#{heads} heads to #{tails} tails" # prints ratio of heads to tails
end

def function5
 # Complete this function
 aFile = File.new("story.txt", "r")
 words = []
 i = 0
 freq = Hash.new(0)   


 aFile.each do |line|
	line.scan(/[-\w]+(?:'\w+)*/){|w| words[i]= w; i+= 1} # Scans for "words" where spaces surround a group of word chars
  # and dashes and apostrophes within "words" are included inside a "word"
 end
 counter = 0

 words.slice!(i) #To remove an empty string at the end

 i -= 1 # Reconfigures size because of empty string
 count = 0

 p "The total number of words are: #{i} words"

 words.map!(&:downcase) # converts all strings to lowercase to more accurately count words

 words.each{|w| w.downcase; freq[w] += 1} # For all "words" in words array, all lowercase "words" are stored in the hash freq

 freq = freq.sort_by{|k, v| -v} # In the hash freq, the keys are sorted by value and freq assigned to the array storing these sorted keys and values

 for i in freq do
	 count += 1 # The total number of words are counted here in the array freq
 end

 p "#{count} is the number of unique words"
 
 p "The second most frequent word is \'#{freq[1][0]}\' and its frequency is: #{freq[1][1]}"
 
 freq.to_h # Converts freq array back to hash form


 count = 0
 
 # For each key in the hash, every key is checked to see if the key starts with the lettter 's'
 freq.each do |k , v|
	 if k.start_with? 's' 
		 count += 1
	 end
 end

 p "The number of words that start with s are: #{count}"

end

# Now call the functions as the following.
function1
function2
function3
function4
function5
