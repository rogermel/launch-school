def hello
  'hello!'
end

def echo(str)
  str
end

def echo_with_yield(str)
  yield if block_given?
  str
end

def say(words)
  yield if block_given?
  puts "> " + words
end

# say('hi there') do
#   system 'clear'
# end

def increment(number)
  if block_given?
    yield(number + 1) if block_given?
  else
    number + 1
  end
end

increment(5) { |num| puts num }