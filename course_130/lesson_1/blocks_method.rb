def each(arr)
  i = 0
  len = arr.size
  
  while i < len
    yield arr[i]
    i += 1
  end
  
  arr
end

def select(arr)
  i = 0
  len = arr.size
  out = []
  
  while i < len
    out << arr[i] if yield arr[i]
    i += 1
  end
  
  out
end

def reduce(arr, acc = 0)
  i = 0
  len = arr.size
  
  while i < len
    acc = yield(acc, arr[i])
    i += 1
  end
  
  acc
end

