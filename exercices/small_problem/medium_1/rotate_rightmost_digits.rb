# - Input:
#  -	2 integers: first argument is the number to rotate and the last n digits to rotate
# - Output:
#  -	a integer for which the last n digits have been rotated
#
# Algorithm:
# - convert original number into array of characters of each digit
# - slice array from beginning to the posion n (excluding that value) and 
# 	concatenate it with the rotated version of the last n digits
# - by using method rotate_array on the last n digits to rotate
# - join and convert to integer

def rotate_array(arr)
	arr[1..-1].concat arr[0...1]
end

def rotate_rightmost_digits(num, n)
	num_a = num.to_s.chars
	rotated_a = num_a[0...-n].concat rotate_array(num_a[-n..-1])
	rotated_a.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917