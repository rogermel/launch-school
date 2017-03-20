def fizzbuzz(start, last)
	out = []
	(start..last).each do |val|
		if val % 3 == 0 && val % 5 == 0
			out << 'FizzBuzz'
		elsif val % 3 == 0
			out << 'Fizz'
		elsif val % 5 == 0
			out << 'Buzz'
		else
			out << val
		end
	end

	out.join(', ')
end

p fizzbuzz(1, 15)