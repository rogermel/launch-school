def zip(arr1, arr2)
  i = 0
  len = arr1.size
  out = []
  
  while i < len
    out << [arr1[i], arr2[i]]
    i += 1
  end
  out
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]