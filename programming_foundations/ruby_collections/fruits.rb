fruits = %w(apple banana pear)
len = fruits.size
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]
  transformed_elements << current_element + 's'

  counter += 1
  break if counter == len
end

puts transformed_elements