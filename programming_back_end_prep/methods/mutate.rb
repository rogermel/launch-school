a = [1, 2, 3]

def mutate(arr)
  arr.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"