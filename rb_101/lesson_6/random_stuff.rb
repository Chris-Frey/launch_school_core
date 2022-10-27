def mixed_sort(arr)
  new_arr = arr.sort_by {|x| x.to_i}
  p new_arr

end





arr_1 = [5, "9", 7, 4, "1", "3"]
arr_2 = [15, "16", 1, "245", 8, 11]
arr_3 = [1, 2, "4", 9, 100]

mixed_sort(arr_1) == ["9", 7, 5, 4, "3", "1"] #=> true
arr_1 == [5, "9", 7, 4, "1", "3"] #=> true

# mixed_sort(arr_2) == ["245", "16", 15, 11, 8, 1] #=> true
# arr_2 == [15, "16", 1, "245", 8, 11] #=> true

# mixed_sort(arr_3) == [100, 9, "4", 2, 1] #=> true
# arr_3 == [1, 2, "4", 9, 100] #=> true

# def two_sum(arr, targ)
#   index = 0
  
#  loop do 
#   arr[index] + arr[index]
#   break
#   end
# end

#  p two_sum([2, 7, 11, 15], 9)


 # Problem
# Given an array of integers and an integer, return the indices of the two integers that add up to the target.
# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]

=begin
*************PROBLEM***************************
*coding goal: return the 2 index values of the 2 integers that add up to the target number

*initial input: 
array of integers and integer

*overall output:
array of 2 integers

*explicit requirements:
always 2 integers that add up to target number

*implicit requirements:
always positive integers
array input size is 2 elements or greater
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)
# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# 2 + 7 = 9 so the indicies 0 and 2 are selected => [0,2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# 2 + 4 = 6, so the indicies 1 and 2 are selected => [1,2]
# p two_sum([3, 3], 6) == [0, 1]
# 3 + 3 = 6 so the indicies 0 and 1 are selected => [0, 1]

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
  notable data structure? what kind can i use:

**************SCRATCH PAD***********************
- iterate through array and add each element together. compare that to the target number and select the first pair that matches.
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1. Initialize a return array to empty
  iterate through array for each number
  create a hash with number as key and value as index position
    compare the keys in each hash
    if number + selected number = target number, 
      return those numbers (separate them out and reference against original array to find index positions)
      then find/return the index of those numbers to an array.