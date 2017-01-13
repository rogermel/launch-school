def pass(arr)
  yield arr
end

birds = %w(raven finch hawk eagle)

pass(birds) do |_, _, *birds_of_prey|
  puts birds_of_prey
end