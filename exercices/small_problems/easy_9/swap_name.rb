# - Input:
#  -	a string: firstname + ' ' + last name
# - Output:
#  -	a string: reverse => lastname + ', ' + first_name
#
# Algorithm:
# - split the string => array of word
# - reverse the array and join with a comma

def swap_name(str)
	str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'