class Sieve
	def initialize(end_range=2)
		raise ArgumentError, "Sieve#new requires an Integer" unless end_range.is_a? Integer
		@range = (2..end_range).to_a
	end

	def primes
		@range.each do |next_num|
			@range.reject! { |n| n % next_num == 0 && n != next_num }
		end
	end
end