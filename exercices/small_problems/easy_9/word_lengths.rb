# - Input:
#  -	a string
# - Output:
#  -	an array of each word in the string with its length
#
# Algorithm:
# - split input string to get an array of word of original input
# - map array with a space and the lenght of the word

def word_lengths(str)
	str.split.map { |w| "#{w} #{w.size}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []