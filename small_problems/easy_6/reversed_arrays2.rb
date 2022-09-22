def reverse(list)
  l_index = 0
  r_index = -1
  new_arr = []
    while l_index < (list.length / 2)
    list[l_index], list[r_index] = list[r_index], list[l_index]
    l_index += 1
    r_index -= 1
    end
   new_arr << list
  p new_arr.object_id
end



p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []   