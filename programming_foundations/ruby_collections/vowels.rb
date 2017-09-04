def select_vowels(str)
  select_chars = ''
  len = str.size
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      select_chars << current_char
    end
    counter += 1
    break if counter == len
  end
  select_chars
end

p select_vowels('the quick brown fox')
sentence = 'I wandered lonely as a cloud'
p select_vowels(sentence)