#!/usr/bin/env ruby

require_relative('lib/cprime')


number_of_primes = false

while !number_of_primes
	puts 'Please enter the number of primes to generate:'
	number_of_primes=Integer(gets.chomp) rescue false
end

puts 'Creating a prime multiplication table using ' + number_of_primes.to_s + ' primes.'

