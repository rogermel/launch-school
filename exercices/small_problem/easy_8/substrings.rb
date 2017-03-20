require_relative 'substrings_at_start.rb'

def substrings(string)
	out = []
	i = 0
	len = string.length

	while i < len
		out += substrings_at_start(string[i..-1])
		i += 1
	end
	out
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]