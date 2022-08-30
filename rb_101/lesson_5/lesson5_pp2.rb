# arr = ['10', '11', '9', '7', '8']

# arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p (books.sort_by do |k|
#   k[:published]
# end)

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# # arr1: arr1[2][1][3]
# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# # arr2: arr2[1][:third][0]
# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# # arr3: arr3[2][:third][0][0]
# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# # hsh1: hsh1['b'][1]
# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# # hsh2: hsh2[:third].key(0)



# arr1 = [1, [2, 3], 4]
# # arr1[1][1] = 4
# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# # arr2[2] = 4
# hsh1 = {first: [1, 2, [3]]}
# # hsh1[first][2][0] = 4
# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# # hsh2[['a']][:a][2] = 4


# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# total_age = []

# munsters.each do |x, y|
#   if y["gender"] = "male"
#    total_age << y["age"]
#   end
#   p total_age.sum
# end
# p total_age.sum


# name = ''
# age = ''
# gender = ''
# munsters.each do |k, v|
#   name = k
#   age = v["age"]
#   gender = v["gender"]
#   p "#{name} is a #{age}-year-old #{gender}."
# end



# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# letters = []
# vowels = 'aeiou'
# output = []

# letters << hsh.values.flatten.join.split(//)
# letters.each do |x| 
#    outpout << x if vowels.include?(x)
#   end

# # p letters  
# p output 



# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |x|
#  p x.sort.reverse
# end



# ***********************
# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# p (arr.map do |k, v|
#  k.values
#  end
# end)



# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
#  new_array = arr.map do |sub_arr|
#   sub_arr.select do |num|
#  num % 3 == 0
#   end
# end
# p new_array



# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
# hsh = {}
# arr.each {|k, v| hsh.store(k, v)}
# p hsh



# Problem 13:
# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]




# Problem 14:
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
# arr1 = []

# hsh.select do |x, y|
#   if y[:type]  == 'fruit'
#     arr1 << (y[:colors].map {|val| val.capitalize})
#   elsif y[:type] == 'vegetable'
#     arr1 << (y[:size].upcase)
#   end
# end
# p arr1



# Problem 15:
# arr = [{a: [1, 2, 3]}, 
#       {b: [2, 4, 6], c: [3, 6], d: [4]}, 
#       {e: [8], f: [6, 10]}]


#  arr.select do |h|
#    h.all? do |k, v|
#     v.all? {|x| x.even?}
#   end
# end
 


def serial(arg)
  letters = ("a".."z").to_a.shuffle
  nums = ('0'..'9').to_a
  arr = []
  
  arg.times do |x|
  
    arr << letters
    arr << nums
    arr1 = arr.flatten.sample(8)
    arr2 = arr.flatten.sample(4)
    arr3 = arr.flatten.sample(4)
    arr4 = arr.flatten.sample(4)
    arr5 = arr.flatten.sample(12)
    
  puts "#{arr1.join} - #{arr2.join} - #{arr3.join} - #{arr4.join} - #{arr5.join}"
  end
end
serial(3)
# creat random number (.rand)
# creat random letter (.shuffle) a string
# put them both in 1 array
# loop sample on the array until the arrays are filled

# add each to arrays numbered 1-5, each having specified size

