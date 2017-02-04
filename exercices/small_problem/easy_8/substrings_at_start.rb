# Undertand the problem:
# - Input: string of character
# - Output:
#  -  array for which each element is all possible substrings of original input string.
#  -  Each substring start at the first letter of original input string.
#  -  Order from shortest to longuest substring
#
# Algorithm:
# - Make an array from original string
# - Iterate over the array extract a subarray from start to current iteration
# - Join subarray for making a string
# - Append created string to the output array

def substrings_at_start(string)
  out = []
  str_to_array = string.chars
  str_to_array.each_with_index { |_, i| out << str_to_array[0..i].join }
  out
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']