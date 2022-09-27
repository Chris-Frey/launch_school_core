def show_multiplicative_average(arr)
index = arr[1]
  mult_num = []
loop do
mult_num << arr[index] * arr[index - 1]
index += 1
  p result
  end
end








show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

=begin
*************Problem***************************
*coding goal 
find the average of the array of numbers

*initial input: non-empty array of numbers

*overall output: number rounded to 3 decimal places

*explicit requirements: output float to 3 decimal places

*implicit requirements: 
 
*questions:
 
*************Examples and Test cases************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:
no edge cases. arrays will always be non-empty

*************Data Structure*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************Scratch Pad***********************
-
************Algorithm***************************

A. Main Method (high-level | What is my overarching process)
	1. define method
    multiply all numbers in the array together
    divide that number by array.length
    round to 3 places with a pre-built method


B. sub-methods (code steps in words)
	1.
=end