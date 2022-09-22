def splitter(str)
  l_index = 0
  r_index = -1
  str.swapcase!
   new_arr = str.split(" ", -1)
  while l_index < (new_arr.length / 2)
    new_arr[l_index], new_arr[r_index] = new_arr[r_index], new_arr[l_index]
     new_arr
    l_index += 1
    r_index -= 1
  end
   new_arr.join(' ')
end



p splitter(" This Is Great  ")
p splitter(' Hello Sir bye')



# def reverse(list)
#   l_index = 0
#   r_index = -1
#   new_arr = []
#     while l_index < (list.length / 2)
#     list[l_index], list[r_index] = list[r_index], list[l_index]
#     l_index += 1
#     r_index -= 1
#     end
#    new_arr << list
#   p new_arr.object_id
# end