=begin
Write a method that takes an array of integers and returns the
two numbers that are closest together in value.

Goal: find the 2 numbers closest together in value, and
return them in an array

explicit rules: none
implicit rules: only integers, no empty strings

use arrays and strings 

initialize empty array1
sort each array from largest to smallest
iterate with map to get pairs
  put that in to array1
  second index minus the third inddex
  compare the sum of the second pair, to the sum of first pair
  if second pair is smaller, reassign the value of the array
    to the new pair.
    repeat until second to last index is done.
    return pair that remains in array1
=end
def closest_numbers(arr)
  index = 0
  solution_arr = []
  temp_arr = []
  sorted_arr = arr.sort.reverse

  sorted_arr.map do |num|
    temp_arr << num - (sorted_arr[index + 1])
    temp_arr
    index += 1
    break if index == arr.length - 1
  end
 p temp_arr
 p solution = temp_arr.index(temp_arr.min)
 p solution
end





# Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) #== [25, 27]
# p closest_numbers([12, 7, 17]) #== [12, 7]

