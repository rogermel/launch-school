alphabet = 'abcdefghijklmnopqrstuvwxyz'
len = alphabet.size
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  selected_chars << current_char if current_char == 'g'
  counter += 1
  break if counter == len
end

puts selected_chars