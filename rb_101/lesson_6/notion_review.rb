def double(num)
  
end

int = 2
double(int)

puts int #=> 2







# def mixed_sort(arr)

#   new_arr = []
#   temp_arr = []
#   output_arr = []
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

#   arr.each do |x|
#     if x.class == Integer
#       new_arr << x 
#     else
#       x.split(//) do |letter|
#         temp_arr << (letter = numbers[letter])
#       end
#       new_arr << temp_arr.join.to_i
#       temp_arr = []
#     end
#     new_arr.sort!.reverse!
#   end
#   new_arr.each do |ele|
#     if arr.include?(ele.to_s)
#       output_arr << ele.to_s
#     elsif
#       ele.class == Integer
#       output_arr << ele
#     end
#   end
# output_arr
# end

# # # h = {}
# # # arr_1.each_with_index do |elem, index|
# # #   h[elem] = index
# # #   p h
# # # end
# # # arr_test = []
# # # h.map do |x, y|
# # #   p h[y]
# # # end 




# arr_1 = [5, "9", 7, 4, "1", "3"]
# arr_2 = [15, "16", 1, "245", 8, 11]
# arr_3 = [1, 2, "4", 9, 100]

# p mixed_sort(arr_1) == ["9", 7, 5, 4, "3", "1"] #=> true
# p arr_1 == [5, "9", 7, 4, "1", "3"] #=> true

# p mixed_sort(arr_2) == ["245", "16", 15, 11, 8, 1] #=> true
# p arr_2 == [15, "16", 1, "245", 8, 11] #=> true

# p mixed_sort(arr_3) == [100, 9, "4", 2, 1] #=> true
# p arr_3 == [1, 2, "4", 9, 100] #=> true