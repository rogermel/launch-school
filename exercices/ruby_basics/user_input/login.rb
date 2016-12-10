PASSWORD = 'SecreT'
USERNAME = 'admin'

loop do
  puts '>> Please enter user name:'
  user_input = gets.chomp
  puts '>> Please enter your password:'
  pass_answer = gets.chomp
  break if pass_answer == PASSWORD && user_input == USERNAME
  puts '>> Authorization failed!'
end

puts 'Welcome!'