require 'cprime'

RSpec.describe Cprime, ".is_prime?" do
	context "with no known primes," do
		it "figures out if a number is prime or not" do
			cprime = Cprime.new
			expect(cprime.is_prime?(7)).to eq true
			expect(cprime.is_prime?(4)).to eq false
		end
	end
end