=begin
*************PROBLEM***************************
*coding goal: 
-find the group of 5 numbers that sum to the smallest total

*initial input: 
-array of integers

*overall output:
- array of 5 integers

*explicit requirements:
return nil if there are less than 

*implicit requirements:
 
*questions:
 
*************EXAMPLES AND TEST CASES************
[1, 2, 3, 4]) == nil
*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:
0 returns nil, anything less than 5 returns nil
*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************
array
A. Main Method (high-level | What is my overarching process)
	1. designate a chunk of 5 integers. 
  cycle through the array moving the chunk +1 each time
  put sum in an empty array caeriable
push to array, then .min the whole array to find the lowest sum

=end

def minimum_sum(arr)
  index = 0

  variable = arr.map do |num|
    num..arr[num + 4]
  end 
end





# p minimum_sum([1, 2, 3, 4]) #== nil
p minimum_sum([1, 2, 3, 4, 5, 6])# == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10