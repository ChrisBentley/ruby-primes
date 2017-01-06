#!/usr/bin/env ruby

require_relative('lib/cprime')


def print_multiplication_table(num_array)
	max_number_width = (num_array[-1] * num_array[-1]).to_s
	column_width = max_number_width.length + 1

	# print x-axis of primes
	print "\n" + " " * column_width
	num_array.each do |y|
		print y.to_s.rjust(column_width)
	end
	# print y-axis divider for table
	print "\n" + " " * column_width + "_" * column_width * num_array.length + "\n"

	# print multiplication table rows
	num_array.each do |y|
		# print y-axis of primes
		print y.to_s.rjust(column_width - 1)
		# print x-axis divider for table
		print "|"

		# print multiplication table columns
		num_array.each do |x|
			print (y * x).to_s.rjust(column_width)
		end
		print "\n"
	end
end


def main(cprime)

	number_of_primes = false
	while !number_of_primes
		print "\nPlease enter the number of primes to generate:\n"
		number_of_primes=Integer(gets.chomp) rescue false
	end

	puts 'Creating a prime multiplication table of the first ' + number_of_primes.to_s + ' primes:'

	beginning_time = Time.now
	primes_array = cprime.generate_primes(number_of_primes)
	end_time = Time.now
	puts "\nIt took "  + ((end_time - beginning_time)*1000).to_s + "ms to generate the primes."


	print_multiplication_table(primes_array)
end


if __FILE__ == $0
	cprime = Cprime.new
	while true
		main(cprime)
	end
end
