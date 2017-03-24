
def center_of(str)
	str_len = str.size
	mid = str.size / 2
	if str_len.even?
		str[(mid - 1)..(mid)]
	else
		str[mid]
	end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'