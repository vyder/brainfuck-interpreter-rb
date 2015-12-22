#!/bin/ruby

array = Array.new(100, 0)

brainfuck = ARGV[0]

index = 0
brainfuck.split("").each do |char|
	case char
	when '+'
		array[index] += 1
	when '-'
		array[index] -= 1
	when '>'
		index += 1
	when '<'
		index -= 1
	when '.'
		print array[index].chr
	end
end
print "\n"

# todo - loops
