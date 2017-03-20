# Understand the problem:
# - Input: string of character
# - Output:
#  -  list of all substrings of a string that are palindromic
#
# Algorithm:
# - Use substrings function to create an array which contains all possible substring
# - select substring which satisfy the following requirements: length is greater than 1 and is a palindrome

require_relative 'substrings.rb'

def is_palindrome?(str)
	str == str.reverse && str.length > 1
end

def palindromes(str)
	substrings_a = substrings(str)
	substrings_a.select { |val| is_palindrome?(val) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
