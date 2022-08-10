# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# return value is: [1,2,3]


# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# return value is: 2


# [1, 2, 3].reject do |num|
#   puts num
# end

# return value of reject: [1, 2, 3]


# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end

# what is return value and why: # => { "a" => "ant", "b" => "bear", "c" => "cat" }
# because it iterates over each item, and returns the first letter as the key, and the string as the value.
