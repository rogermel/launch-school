def each_with_index(arr)
  i = 0
  len = arr.length
  
  while i < len
    yield(arr[i], i)
    i += 1
  end
  arr
end

result = each_with_index([1, 3, 6]) do |val, i|
  puts "#{i} -> #{val**i}"
end

puts result == [1, 3, 6]