def crunch(str)
  index = 0
  new_string = ''

  loop do
    current_char = str[index]
    if str[index] != str[index + 1]
      new_string += current_char
    end
    index += 1
    break if index == str.size + 1
  end
  p new_string
end





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