# - Input:
#  -	a string
# - Output:
#  -	a boolean: true all alphabetic characters are uppercase
#
# Algorithm:
# - make an array input string
# - grep all aphabetic characters
# - check is they are all? in uppercase

def uppercase?(str)
	str.chars.grep(/[a-z]/i).all? { |char| char == char.upcase }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
