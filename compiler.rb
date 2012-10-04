#!/bin/ruby

array = []
100.times { array << 0 }

brainfuck = ARGV[0]

counter = 0
brainfuck.split("").each do |char|
	if char == '+'
		array[counter] += 1
	elsif char == '-'
		array[counter] -= 1
	elsif char == '>'
		counter += 1
	elsif char == '<'
		counter -= 1
	elsif char == '.'
		print array[counter].chr
	end
end
print "\n"