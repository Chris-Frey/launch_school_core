def buy_fruit(list)
  index = 0
  arr =[]

  solution = list.map do |x|
              list[index][1].times do
              arr << (list[index][0])
              end
    index += 1
  end
  arr
end




p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]



=begin
*************PROBLEM***************************
*coding goal: take the fruit from each array, and have it print to a
combined array matching the number in index 1 of the original array

*initial input: array of arrays of strings

*overall output: single array of strings

*explicit requirements: no digits required in final array

*implicit requirements: final array to have 1 level containing all fruit
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:
- none

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
	1. define buy_fruit method
  iterate over each sub-array and multiply the index[0] of each array, 
  by the index[1] of the same array.
  flatten final array if necessary


B. sub-methods (code steps in words)
	1.
=end