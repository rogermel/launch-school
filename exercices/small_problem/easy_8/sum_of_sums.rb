# Undertand the problem:
# - Input: array of number
# - Output: number which are the sum of subsequent array
#
# Algorithm
# - iterate over array element and create a sliced array beginning at first element to current array index
# - compute the sum of subarray and add it to total sum
# - return total sum

def sum_of_sums_2(array)
  total_sum = 0
  i = 0
  len = array.size
  
  while i < len
    total_sum += array[0..i].inject { |sum, j| sum + j }
    i += 1
  end
  total_sum
end

def sum_of_sums(array)
  total_sum = 0
  array.each_with_index { |_, i| total_sum += array[0..i].inject(:+) }
  total_sum
end


# Test Cases

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35