# - Input:
#  -  an odd integer
# - Output:
#  - 4-pointed diamond in an n * n grid
#  - The totol number of elements (diamond and space) are equal to the argument provided
#  - a diamond is surronded by an equal number of space so each number of displayed diamond are odd
#  - at the middle of the iteration (num / 2 + 1) the number of diamond equal the argument
#
# Algorithm:
# - 
# - 

def diamond(num)
  raise ArgumentError, 'Odd number must be supplied' unless num.odd?

  i = 1
  middle = num / 2 + 1
  space_each_side = middle - 1

  while i <= num
    num_diamond = num - space_each_side * 2
    puts ' ' * space_each_side + '*' * num_diamond + ' ' * space_each_side
    if i < middle
      space_each_side -= 1
    elsif i > middle
      space_each_side += 1
    end
    i += 1
  end
end

diamond(5)



