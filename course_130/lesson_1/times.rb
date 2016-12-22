def times(num)
  i = 0
  
  while i < num
    yield i
    i += 1
  end
  num
end

times(5) { |x| puts x }