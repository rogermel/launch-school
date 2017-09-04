# Understand the problem:
# - Input: string of character
# - Output:
#  -  new string in which every character is doubled
#
# Algorithm:
# - make an array of chars from original input string
# - map newly created array by creating a double of those char
# - join the array

def repeater(str)
	str.chars.map { |val| val + val }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''