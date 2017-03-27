class Series
	def initialize(digits)
		@digits = digits
		@length = digits.length
	end

	def slices(n)
		raise ArgumentError, "Argument must be less or equal to #{@length}" unless n <= @length
		out = []
		digits_a = @digits.chars
		digits_a.map!(&:to_i)
		digits_a.each_with_index { |digit, i| out << digits_a[i, n] if n <= digits_a[i..-1].size }
		out
	end
end