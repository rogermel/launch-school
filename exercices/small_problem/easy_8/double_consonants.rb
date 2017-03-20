# Understand the problem:
# - Input: string of character
# - Output:
#  -  new string in which every consonant character is doubled
#  - Except the following characters: Vowels (a,e,i,o,u), digits, punctuation, and whitespace
#
# Algorithm:
# - gsub (gobal substitution) of all consonant char by the char doubled

def double_consonants(str)
	str.gsub(/([b-df-hj-np-tv-z])/i, '\1\1')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""