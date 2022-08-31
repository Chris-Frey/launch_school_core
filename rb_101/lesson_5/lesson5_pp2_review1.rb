# arr = ['10', '11', '9', '7', '8']
# p arr.map {|num| num.to_i}.sort.reverse!
#  OR
# p arr.sort {|a, b| b.to_i <=> a.to_i}


# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p books.sort_by {|a|  a[:published].to_i}




# arr1[2][1][3]
# arr2[1][:third][0]
# arr3[2][:third][0][0]
# hsh1['b'][1]
# hsh2[:third][0]



# arr1[1][1]
# arr2[2]
# hsh1[:first][1]
# hsh2[['a']][1][2]



# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# age = 0
# munsters.each_value do |details|
#   age += details["age"] if details["gender"] == "male"
# end

# age = ''
# gender = ''
# name = ''
# munsters.each_pair do |stat, value|
# p "#{stat} is a #{value['age']}-year-old #{value['gender']}"
# end


# a = 2
# b = [5, 8]
# arr = [a, b] #arr = [2, [5,8]]

# arr[0] += 2 #arr = [4, [5, 8]]
# arr[1][0] -= a #arr = [4, [1, 8]]

# a = 2
# b = 



# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
#  arr.map do |main|
# p  main.sort
#   end
# # end
# p arr



# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# arr_new = []
# arr.map do |x|
#   x.each_value do |v|
#   p  arr_new << v += 1
# end
# end



# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# arr_n = []
# arr.map do |top|
#   top.select do |num|
#  arr_n << num if num % 3 == 0
# end
# end
# p arr_n



# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
# hsh = {}
# arr.each {|k, v| hsh.store(k, v)}

# puts hsh




# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

#  check = arr.sort_by do |x|
#    x.select do |y|
#     y.odd?
#  end
# end
# p check

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
# arr_return = []
# hsh.each do |x, y|
#   arr_return << y[:colors].map(&:capitalize) if y[:type] == 'fruit'
#   arr_return << y[:size].upcase if y[:type] == 'vegetable' 
# end
# p arr_return



# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# evens = []
# evens = arr.select do |lvl1|
#   lvl1.all? do |_, v|
#     v.all? do |num| 
#        num.even?
#     end
#   end
# end
# p evens




def rng(arg)
digits = ("a".."f").to_a + ("A".."F").to_a + ("0".."9").to_a

  arg.times do 
    sec1 = digits.sample(8).join
    sec2 = digits.sample(4).join
    sec3 = digits.sample(4).join
    sec4 = digits.sample(4).join
    sec5 = digits.sample(12).join

  p  "#{sec1}-#{sec2}-#{sec3}-#{sec4}-#{sec5}"
  end
end

rng(7)