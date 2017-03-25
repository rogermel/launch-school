# - Input:
#  -	an integer
# - Output:
#  - a integer which is the maximum rotation of that number
#  - maximum rotation of a number is actually performing rotate rightmost digits in a loop
#  - n times starting with n = digit lenght, and decrementing n by one 
#
# Algorithm:
# - compute the length of digits within number
# - compute rotate_rightmost_digits n times down to n = 1 (last digit in original number)

require_relative 'rotate_rightmost_digits'

def max_rotation(num)
	len = num.to_s.size
	len.downto(1) do |n|
		num = rotate_rightmost_digits(num, n)
	end
	num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845