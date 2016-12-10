VOWELS = %w(a e i o u)

def repeat(str, num)
  num.times { puts str }
end

def is_odd?(number)
  number = number > 0 ? number : -1 * number
  number % 2 == 1
end

def digit_list(number)
  number.to_s.chars.map { |x| x.to_i }
end

def count_occurrences(arr)
  arr.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
end

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

def reverse_words(str)
  str.split.map { |word| word.size > 4 ? word.reverse : word }.join(' ')
end

def stringy(num)
  out = ''
  (1..num).each { |x| out << ((x.odd?) ? '1' : '0') }
  out
end

def average(arr)
  tot = arr.inject { |sum, i| sum + i }
  tot/arr.size
end

def sum(number)
  tot = 0
  number.to_s.chars { |num| tot += num.to_i }
  tot
end

def calculate_bonus(number, flag)
    flag ? number/2 : 0
end

def oddities(arr)
  out = []
  arr.each_with_index { |val, i| out << val if i.even? }
  out
end

def palindrome?(str)
  str == str.reverse
end

def multisum(number)
  all_multi = []
  (1..number).each { |num| all_multi << num if (num % 3 == 0) || (num % 5 == 0) }
  all_multi.inject { |sum, i| sum + i }
end

def running_total(arr)
  out = []
  sum = 0
  arr.each do |x|
    sum += x
    out << sum
  end
  out
end

def cleanup(str)
  str.gsub(/\W/, ' ').gsub(/\s+/, ' ')
end

def crunch(str)
  out = ''
  i = 0
  while i < str.size
    out << str[i] if str[i] != str[i+1]
    i += 1
  end
  out
end

def word_sizes(str)
  str.split.inject(Hash.new(0)) { |h, v| h[v.length] += 1; h }
end

def remove_vowels(arr)
  arr.delete_if { |x| VOWELS.include?(x.downcase) }
end

def reverse(arr)
  out = []
  i = -1
  arr.each do
    out << arr[i]
    i -= 1
  end
  out
end

def merge(arr1, arr2)
  out = []
  (arr1 + arr2).each { |x| out << x unless out.include?(x) }
  out
end

def include?(arr, val)
  arr.each { |x| return true if val == x }
  false
end

def triangle(num)
  (1..num).each { |x| puts ' ' * (num - x) + '*' * x }
end

def interleave(arr1, arr2)
  out = []
  len = arr1.length
  i = 0
  
  while i < len
    out << arr1[i] << arr2[i]
    i += 1
  end
  out
end

def interleave2(arr1, arr2)
  out = []
  arr1.each_with_index do |x, idx|
    out << arr1[idx] << arr2[idx]
  end
  out
end

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

def swapcase(str)
  camelcase = str.chars.map do |char|
    if char == char.downcase
      char.upcase
    elsif char == char.upcase
      char.downcase
    else
      char
    end
  end
  camelcase.join
end

def show_multiplicative_average(arr)
  tot = arr.inject(1) { |sum, i| sum * i }
  format('%.3f', tot.to_f / arr.size)
end


def multiply_list(arr1, arr2)
  out = []
  arr1.each_with_index { |val, i| out << val * arr2[i] }
  out
end

def multiply_all_pairs(arr1, arr2)
  out = []
  arr1.each do |val1|
    arr2.each { |val2| out << val2 * val1}
  end
  out.sort
end