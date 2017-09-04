# - Input:
#  -	an number
# - Output:
#  -	a negative number if original number is positif or as-is
#
# Algorithm:
# - return the negative of the provided number unless if number less or equal to 0

def negative(num)
	return -num unless num <= 0
	num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby