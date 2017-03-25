# Understand the problem:
# - Input:
#  -	a number
# - Output:
#  -  number (one of the 2 options)
#  		- 2 times the number provided if the number is not "a double number"
#  		- the number as-is if
#
# Algorithm:
# - check if argument is a "double number"
# - if it is a "double number" return the number as-is else return 2 times the number
# function: double_number?
# - make a string from the number then make an array of characters
# - return true if array size is even AND left-side digits are equal righ-side digit
# 	- take the middle index and check if chars form (0..(mid - 1)) equal (mid..-1)

def double_number?(num)
	num_a = num.to_s.chars
	mid = num_a.size / 2

	num_a.size.even? && num_a[0..(mid - 1)] == num_a[mid..-1]
end

def twice(num)
	double_number?(num) ? num : 2 * num
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10