def select_fruit(hash_fruit)
  keys = hash_fruit.keys
  len = keys.size
  i = 0
  out = {}

  while i < len
    val = hash_fruit[keys[i]]
    key = keys[i]
    out[key] = val if val == 'Fruit'
    i += 1
  end
  out
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)