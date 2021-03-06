class Octal
	def initialize(octal='0')
		raise ArgumentError, "Octal#new requires a String" unless octal.is_a? String
		@octal = octal.chars
	end

	def to_decimal
		return 0 unless octal?

		@octal.shift if @octal[0] == '0'
		@octal.map(&:to_i)
					.reverse
					.each_with_index.inject(0) { |sum, (num, i)| sum + (num * 8 ** i) }
	end

	def octal?
		@octal.all? { |i| i =~ /[0-7]/ }
	end

	private :octal?
end
