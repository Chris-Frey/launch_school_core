# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# selected = produce.keys
# counter = 0
# fruit_return = {}
# loop do
#   break if counter == produce.size

#   current_food = selected[counter]
#   current_food_type = produce[current_food]
#   if current_food_type == 'Fruit'
# fruit_return.store(current_food, current_food_type)
#   end
#   counter += 1
# end
# p fruit_return


# my_numbers = [1, 4, 3, 7, 2, 6]

# def double_numbers(numbers)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2

#     counter += 1
#   end

#   numbers
# end
# p double_numbers(my_numbers)



# my_numbers = [1, 4, 3, 7, 2, 6]

# def double_odd_numbers(numbers)
# doubled_numbers = []
# counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     if counter.odd?
#       doubled_numbers << current_number *= 2
#     else 
#       doubled_numbers << current_number
#     end
#       counter += 1
    
#   end
#   doubled_numbers
# end

# p my_numbers
# p double_odd_numbers(my_numbers)


# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

#  p books.sort_by {|x| x[:published]}


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# p if munsters["gender"] == "male"
#   ["age"].keys.sum
# end
# munsters.select {|x, y| if "gender" == "male"}

# ages = []
# munsters.select do |_, y|
#   if y["gender"] == "male"
#     then ages << y["age"] 
#   end
# end
# p ages

munsters.each do |x, y|
p "#{x} is a #{y["age"]}-year-old #{y["gender"]}."
end