def step(first, last, step)
  val = first
  while val < last
    yield val
    val += step
  end
  yield last
end

step(1, 10, 3) { |value| puts "value = #{value}" }
