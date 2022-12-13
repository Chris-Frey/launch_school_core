#OR
=begin 
SOLVED IN 26 MINUTES
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
=end 

=begin 
Goal: return an array with the numbers added up as you progress each index, from left to right.

input: array of numbers 
output: array of numbers with math 

rules:
no floats
no strings
CAN BE EMPTY
CAN BE SINGLE ELEMENT 

data structures:
arrays

Algorithm
add first index to second. then second to third
  map if index - 1 < 0, index += 1
else index+1 = index + index+1 
 ### a[index] + a[index - 1]
  return input if only 1 element
  return input if empty 
=end 

def running_total(arr)
  index = 1

  if arr.length < 2
    return arr
  end
 
  loop do 
    arr[index] = (arr[index] + arr[index - 1])
    index += 1
    break if index == arr.length
  end
  arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []