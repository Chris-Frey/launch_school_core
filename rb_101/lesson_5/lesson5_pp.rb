# Pracitce 1
# arr = ['10', '11', '9', '7', '8']

# def sorted(arg)
# arg.map {|x| x.to_i}.sort.reverse
# end

# p sorted(arr)

# Given solution 1:
# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end
# => ["11", "10", "9", "8", "7"]


# Practice 2 - Matched solution
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p books.sort_by {|k, v| k[:published]}


# Practice 3
# 1: arr1[2][3]        - answer: arr[2][1][3]
# 2: arr2[third][0]    - answer: arr2[1][:third][0]
# 3: arr3[third][0]    - answer: arr3[2][:third][0][0]
# 4: hsh1[b][1]        correct
# 5: hsh2[g]           - answer: hsh2[:third].key(0)


# Practice 4
# 1: arr1[1][1] = 4                correct
# 2: arr2[2][0] = 4                -arr2[2]
# 3: hsh1[:first].key(3) = 4       -hsh1[:first][2][0] = 4
# 4: hsh2[0][0][:a][0].key(3) = 4  -hsh2[['a']][:a][2] = 4


# Practice 5
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# totals = 0
# munsters.each_value do |hshv|
#     totals += hshv["age"] if hshv["gender"] == "male"
#     end 

# p totals


# Practice 6
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# name = ''
# age = ''
# gender = ''

# munsters.each do |k, v|
#   name = k
#   age = v["age"]
#   gender = v["gender"]
#   p "#{name} is a #{age}-year-old #{gender}"
# end



# Practice 8
# hsh = {
#   first: ['the', 'quick'], 
#   second: ['brown', 'fox'], 
#   third: ['jumped'], 
#   fourth: ['over', 'the', 'lazy', 'dog']
# }

# vowels = ["a", "e", "i", "o", "u", "y"]
# output = []
# product = []

# hsh.each do |k, v|
#   output.concat(v)
# end
#  p output.join.count(vowels.join)

#  Provided solution:
#  vowels = 'aeiou'

#  hsh.each do |_, value|
#    value.each do |str|
#      str.chars.each do |char|
#        puts char if vowels.include?(char)
#      end
#    end
#  end


# Practice 10:
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
 arr.map do |a, v|
 p a[v]  = 2
end