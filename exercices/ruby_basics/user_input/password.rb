PASSWORD = 'hi!'

loop do
  puts '>> Please enter your password:'
  pass_answer = gets.chomp
  break if pass_answer == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'