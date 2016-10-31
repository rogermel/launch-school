puts "What is your name"
name = gets.chomp

puts "Hello #{name}"

puts "How old are you"
age = gets.chomp.to_i

10.times do
  puts name
end