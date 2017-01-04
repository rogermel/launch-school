def missing(arr)
  out = []
  first = arr.first
  last = arr.last
  (first..last).each { |num| out << num unless arr.include?(num) }
  out
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []