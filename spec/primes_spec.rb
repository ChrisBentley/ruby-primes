require_relative('../primes')

RSpec.describe "print_multiplication_table" do
	context "when given an array of primes" do
		it "prints out a well formatted multiplication table" do

			expected_table = "\n       2   3   5   7  11" \
							 "\n    ____________________" \
							 "\n  2|   4   6  10  14  22" \
							 "\n  3|   6   9  15  21  33" \
							 "\n  5|  10  15  25  35  55" \
							 "\n  7|  14  21  35  49  77" \
							 "\n 11|  22  33  55  77 121\n"

			primes_array = [2, 3, 5, 7, 11]

			expect { print_multiplication_table(primes_array) }.to output(expected_table).to_stdout
		end
	end
end