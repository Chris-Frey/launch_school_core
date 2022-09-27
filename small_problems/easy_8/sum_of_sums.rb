def sum_of_sums(arr)
  index = 0
  size = arr.length
  spot = size * -1
  full_arr = []

    loop do
      break if index == arr.length

      full_arr << arr[0..spot]
      spot += 1
      index += 1

    end
  p full_arr.flatten.sum
end




p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
*************Problem***************************
*coding goal return the sum of sumes for each sequence
(e.g. [3, 5, 2] == 3 + (3 + 5) + (3 + 5 + 2) -> 21

*initial input: single non-empty array

*overall output: integer (sum)

*explicit requirements: arrays will always have at least 1 number

*implicit requirements:
 
*questions:
 
*************Examples and Test cases************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************Data Structure*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************Scratch Pad***********************
-
************Algorithm***************************

A. Main Method (high-level | What is my overarching process)
	1. 


B. sub-methods (code steps in words)
	1.
=end