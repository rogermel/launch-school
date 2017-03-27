class Series
	def initialize(digits)
		@digits = digits
		@length = digits.length
	end

	def slices(n)
		raise ArgumentError, "Argument must be less or equal to #{@length}" unless n <= @length
		out = []
		digits = @digits.chars.map(&:to_i)
		
		digits.each_with_index { |_, i| out << digits[i, n] if n <= digits[i..-1].size }
		out
	end
end