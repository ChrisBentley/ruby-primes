#!/usr/bin/env ruby

require_relative('lib/cprime')

number_of_primes = false

while !number_of_primes
	puts 'Please enter the number of primes to generate:'
	number_of_primes=Integer(gets.chomp) rescue false
end

puts 'Creating a prime multiplication table of the first ' + number_of_primes.to_s + ' primes:'

cprime = Cprime.new

num_array = cprime.generate_primes(number_of_primes)

print "\n"

max_number_width = (num_array[-1] * num_array[-1]).to_s
column_width = max_number_width.length + 1

y = 0
print " " * column_width
num_array.each do
	print num_array[y].to_s.rjust(column_width)
	y += 1
end

print "\n"
print " " * column_width
print "_" * column_width * num_array.length
print "\n"

y = 0
num_array.each do
	x = 0
	print num_array[y].to_s.rjust(column_width - 1)
	print "|"
	num_array.each do
		print (num_array[y] * num_array[x]).to_s.rjust(column_width)
		x += 1
	end
	print "\n"
	y += 1
end