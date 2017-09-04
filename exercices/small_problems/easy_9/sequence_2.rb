# - Input:
#  -	2 integers:
# => first integer is a count
# => second integer is the first value of the array
# - Output:
#  -	an array with count number of element and value are multiple of second argument (starting number)
#
# Algorithm:
# - create a Range from 1 to count
# - map each element times the second argument (starting value)

def sequence(count, start)
	(1..count).map { |val| val * start }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []