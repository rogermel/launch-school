# - Input:
#  -	an array
# - Output:
#  -	a rotated array for which the first element are placed at the end of newly created array
#  -	original array is unchanged
#
# Algorithm:
# - concat input array from 1 to the end (1..-1) with the first element array

def rotate_array(arr)
	arr[1..-1].concat arr[0...1]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true