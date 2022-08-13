def oddities(arr)
new_arr = []
arr.each_index {|x| if x.even? then new_arr << arr[x] end }
new_arr
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []