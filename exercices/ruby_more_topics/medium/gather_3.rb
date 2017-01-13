items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*items, wheat|
  puts items.join(', ')
  puts wheat
end

gather(items) do |apple, *items, wheat|
  puts apple
  puts items.join(', ')
  puts wheat
end

gather(items) do |apple, *items|
  puts apple
  puts items.join(', ')
end

gather(items) do |apple, corn, cab, wheat|
  puts "#{apple}, #{corn}, #{cab}, #{wheat}"
end