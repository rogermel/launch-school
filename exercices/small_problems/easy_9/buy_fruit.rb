# - Input:
#  -	an array of array
# - Output:
#  -	an array for which elements are n times the number of each fruit
#
# Algorithm:
# - for each fruit (array element) add the name of fruit upto the number of times specified
# - return out array

def buy_fruit(arr)
	out = []
	arr.each do |fruit|
		1.upto(fruit[1]) { out << fruit[0] }
	end
	out
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]