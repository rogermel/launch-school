def compute(&block)
  return block.call if block_given?
  "Does not compute."
end

def compute2(arg)
  return "Does not compute." unless block_given?
  yield arg
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'
p compute2(5) { |x| x + 3 } == 8
p compute2('a') { |x| x + 'b' } == 'ab'
p compute2('hello') == 'Does not compute.'