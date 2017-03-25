# - Input:
#  -	an number
# - Output:
#  -	an array of all integers, from value 1 to the number provided as argument
#
# Algorithm:
# - loop from 1 upto the number provided and add the number the ouput array
# - return the output array

def sequence(num)
	out = []
	1.upto(num) { |i| out << i }
	out
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]