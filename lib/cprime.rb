class Cprime
	def initialize
		@known_primes = []
	end

	def is_prime?(n)
		return false if n < 2
		return true if @known_primes.include?(n)
		# return false if @known_primes.length != 0 and @known_primes[-1] > n

		(2...n).each do |i|
			return false if n % i == 0
		end

		@known_primes.push(n)
		return true
	end

	def generate_primes(n)
		
	end
end