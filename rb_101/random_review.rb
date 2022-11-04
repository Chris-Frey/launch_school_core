def mixed_sort(arr)
  arr.sort_by do |x|
    x.to_i
  end.reverse!
end





 arr_1 = [5, "9", 7, 4, "1", "3"]
 arr_2 = [15, "16", 1, "245", 8, 11]
 arr_3 = [1, 2, "4", 9, 100]

p mixed_sort(arr_1) == ["9", 7, 5, 4, "3", "1"] #=> true
p arr_1 == [5, "9", 7, 4, "1", "3"] #=> true

p mixed_sort(arr_2) == ["245", "16", 15, 11, 8, 1] #=> true
arr_2 == [15, "16", 1, "245", 8, 11] #=> true

p mixed_sort(arr_3) == [100, 9, "4", 2, 1] #=> true
arr_3 == [1, 2, "4", 9, 100] #=> true







# def rotate_rightmost_digits(num, quant)
#   arr = num.to_s.split(//)
#   counter = quant * -1
#   new_num = arr[counter]
 
#   arr.delete(new_num)
#   arr.append(new_num)
#   arr.join.to_i
# end

# def rotate_rightmost_digits(num, quant)
#   arr = num.to_s.split(//)
#   counter = quant * -1
#   new_num = arr[counter]
 
#   arr.delete(arr[counter])
#   arr.append(new_num)
#   arr.join.to_i
# end

# def rotate_rightmost_digits(num, quant)
#   arr = num.to_s.split(//)
#   counter = quant * -1
#   new_num = arr[counter]
 

#   arr.delete_at(counter)
#   arr.append(new_num)
#   arr.join.to_i
  
# end

# p rotate_rightmost_digits(715291, 1) == 715291
# p rotate_rightmost_digits(735291, 2) == 735219 # 91 -> 19
# p rotate_rightmost_digits(735291, 3) == 735912 # 291 -> 912
# p rotate_rightmost_digits(735291, 4) == 732915 # 5291 -> 2915
# p rotate_rightmost_digits(735291, 5) == 752913 
# p rotate_rightmost_digits(735291, 6) == 352917