def symm(arg1)
p arg1
end




# Consider the word "abode". 
# We can see that the letter a is in position 1 and b is in position 2. 
# In the alphabet, a and b are also in positions 1 and 2. 
# Notice also that d and e in abode occupy the positions they would occupy 
# in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters 
# that occupy their positions in the alphabet for each word. For example,

p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]




# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0


&&&&&&&&&&&&&&&&&&&&&&&&& - grants algorithm
1. Initialize 'sub_array_lengths' to an empty array
2. Create a range from 0 up to, not including, the length of the input array
  a. Iterate over the range created in Step 2 and access each value via 'outer_i'
    i. Create a range from 'outer_i' up to, not including, the length of the input array
      - iterate over the range created in the previous step and access each value via 'inner_i'
        - Create an array containing the elements from index 'outer_i' up to and including 'outer_i'
        - Check if the sum of this array is greater than or equal to the second argument integer
        - if it is, push the length of this array to 'sub_array_lengths'
3. Check if the length of sub_array_lengths is 0
  a. if it is, return 0
  b. if it's not, return the minimum value
  %%%%%%%%%%%%%%%%%%%%%%%%%%%


=begin
*************PROBLEM***************************
*coding goal:

*initial input: 

*overall output:

*explicit requirements:

*implicit requirements:
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
	1. 


B. sub-methods (code steps in words)
	1.
=end