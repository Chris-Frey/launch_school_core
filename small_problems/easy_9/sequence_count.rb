def sequence(arg1, arg2)
  index = 1
  arr = []

  loop do 
    arr << (arg2 * index)
    break if arr.length == arg1
    index += 1
  end
   arr
end



p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []


=begin
*************PROBLEM***************************
*coding goal: create array of numbers that are multiples of the starting number
with the quantity of numbers determined by the first input

*initial input: 2 numbers

*overall output: array of numbers

*explicit requirements: count will always be greater than 0. 
- if the count is 0, an empty array should be returned

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
	1. define sequence method
      take arg1 (quantity) and arg2 (multiplier)
      index = 1
      arr = []

      loop do 
        arr << arg2 * index
        break if arr.length == arg1
        index =+ 1


B. sub-methods (code steps in words)
	1.
=end