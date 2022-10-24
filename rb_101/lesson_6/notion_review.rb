 numbers = [1, 2, 3, 4, 5]
p numbers.object_id
p arr1 = numbers.each { |num| num * 2 }.object_id

p arr2 = numbers.map { |num| num }.object_id

p arr3 = numbers.select { |num| num < 10 }



# def mixed_sort(arr)

#   new_arr = []
#   numbers = {"1" => 1, 
#              "2" => 2, 
#              "3" => 3, 
#              "4" => 4, 
#              "5" => 5, 
#              "6" => 6, 
#              "7" => 7, 
#              "8" => 8, 
#              "9" => 9,
#              "0" => 0}
  
#   arr.each_with_object([]) do |x|
#     if x.class == String
#      new_arr << (x = numbers[x])
#     else
#       new_arr << x
#     end
#     p new_arr.sort.reverse!
#   end
#   # if new_arr.any?()
#   p new_arr
# end


# # h = {}
# # arr_1.each_with_index do |elem, index|
# #   h[elem] = index
# #   p h
# # end
# # arr_test = []
# # h.map do |x, y|
# #   p h[y]
# # end 




# arr_1 = [5, "9", 7, 4, "1", "3"]
# arr_2 = [15, "16", 1, "245", 8, 11]
# arr_3 = [1, 2, "4", 9, 100]

# p mixed_sort(arr_1) #== ["9", 7, 5, 4, "3", "1"] #=> true
# # arr_1 == [5, "9", 7, 4, "1", "3"] #=> true

# p mixed_sort(arr_2) #== ["245", "16", 15, 11, 8, 1] #=> true
# # arr_2 == [15, "16", 1, "245", 8, 11] #=> true

# # p mixed_sort(arr_3) #== [100, 9, "4", 2, 1] #=> true
# # arr_3 == [1, 2, "4", 9, 100] #=> true