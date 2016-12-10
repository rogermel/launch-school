def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num1 = nil
loop do
  puts '>> Please enter the numerator:'
  num1 = gets.chomp
  break if valid_number?(num1)
  puts '>> Invalid input. Only integers are allowed.'
end

num2 = nil
loop do
  puts '>> Please enter the denominator:'
  num2 = gets.chomp
  
  if num2 == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(num1)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = num1.to_i / num2.to_i
puts "#{num1} / #{num2} is #{result}"