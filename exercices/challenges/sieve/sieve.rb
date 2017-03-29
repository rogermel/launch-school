class Sieve
	def initialize(end_range=2)
		raise ArgumentError, "Sieve#new requires an Integer" unless end_range.is_a? Integer
		@range = 2..end_range
	end

	def primes
		@range.to_a.select { |num| prime?(num) }
	end

	def prime?(num)
		@range.each { |n| return false if num % n == 0 && num != n }
		true
	end

	private :prime?
end