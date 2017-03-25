# Understand the problem:
# - Input:
#  -	an array containing element of the name
#  -	a hash with 2 keys: title and occupation
# - Output:
#  -  string:
#  		- greeting with person full name coming from the array argument and the person title
#  		- prefix greeting with 'Nice to have a' and finish it with 'around.'
#
# Algorithm:
# - create a person name by joining array argument (a method can be used for that) with space
# - concat that value with title details coming from hash object

def name(arr)
	arr.join(' ')
end

def title(hash_details)
	"#{hash_details[:title]} #{hash_details[:occupation]}"
end

def greetings(arr, hash_d)
	"Hello, #{name(arr)}! Nice to have a #{title(hash_d)} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
