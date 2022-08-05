# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(input)
# fruit_hash = {}

#   input.each do |key, value| 
#     if value == 'Fruit' then fruit_hash[key] = value
#     end
#   end
#   puts fruit_hash 
# end


# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
# puts produce



# or
# vv this is the book solution

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end




#Problem 2

# def double_numbers!(my_numbers)
#   counter = 0

#   loop do
#     break if counter == my_numbers.size

#     current_number = my_numbers[counter]
#     my_numbers[counter] = current_number * 2
#     counter += 1
#   end
#   my_numbers
# end


# my_numbers = [1, 4, 3, 7, 2, 6]
# puts double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
# puts my_numbers





#Problem 3

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     odds = numbers[counter] *= 2 if counter.odd?
#     doubled_numbers << odds

#     counter += 1
#   end

#   puts doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]




#problem 4

def multiply(my_num, num)
counter = 0
z = []

  loop do
    break if counter == my_num.size

    x = my_num[counter]
    z << x *= num

  counter += 1
  end

puts z
end  
my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]