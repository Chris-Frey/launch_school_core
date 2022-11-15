=begin
*************PROBLEM***************************
*coding goal: compare numbers in array to find the 2 that are closest in value

*initial input: Array of numbers

*overall output: array of numbers with the least difference between them

*explicit requirements: none

*implicit requirements: no letters, no empty arrays
 
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
	1.  compare values of each index
    subtract larger number from smaller for each pair
      if the subtracted value is smaller, replace old array with new
  return variable

=end

def closest_numbers(arr)
  final_variable = []
  temp_variable = [1000] 
  index = 0

  sorted = arr.sort!.reverse!

  loop do
     temp_variable = (arr[index] - arr[index + 1])
     p temp_variable
    if temp_variable < final_variable.sum
      final_variable << arr[index] << arr[index + 1]
    end
    p final_variable
      index += 1
      break if arr[index] == arr.length - 2

  end
    p final_variable
    # p temp_variable
  # end
end




p closest_numbers([5, 25, 15, 11, 20])# == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]