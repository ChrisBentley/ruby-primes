require 'cprime'

RSpec.describe Cprime, ".is_prime?" do
	context "with no known primes" do
		it "returns true for a prime number" do
			cprime = Cprime.new
			expect(cprime.is_prime?(7)).to eq true
		end

		it "returns false for a non-prime number" do
			cprime = Cprime.new
			expect(cprime.is_prime?(4)).to eq false
		end

		it "returns false for a number less than 2" do
			cprime = Cprime.new
			expect(cprime.is_prime?(1)).to eq false
			expect(cprime.is_prime?(-10)).to eq false
		end
	end

	context "with some known primes" do
		it "returns faster than without" do
			cprime = Cprime.new

			beginning_time = Time.now
			cprime.is_prime?(97)
			end_time = Time.now
			first_run_time = (end_time - beginning_time)*1000

			beginning_time = Time.now
			cprime.is_prime?(97)
			end_time = Time.now
			second_run_time = (end_time - beginning_time)*1000

			expect(first_run_time).to be > second_run_time
		end
	end
end

RSpec.describe Cprime, ".generate_primes" do
	context "with no known primes" do
		it "generates the correct number of primes" do
			cprime = Cprime.new
			produced_array = cprime.generate_primes(10)
			expect(produced_array.length).to eq 10
		end

		it "returns a correct list of primes" do
			cprime = Cprime.new
			expected_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
			expect(cprime.generate_primes(10)).to eq expected_primes
		end
	end
end