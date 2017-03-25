# - Input:
#  -	3 integers:
# - Output:
#  -	a letter which represent the Grade
#
# Algorithm:
# - compute the average of the 3 integers
# - pass the average to a case statement and return the grade

def average(num1, num2, num3)
	(num1 + num2 + num3) / 3
end

def get_grade(num1, num2, num3)
	mean = average(num1, num2, num3)
	case mean
	when 90..100
		'A'
	when 80...90
		'B'
	when 70...80
		'C'
	when 60...70
		'D'
	else
		'E'
	end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"