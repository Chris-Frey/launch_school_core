def penultimate(str)
 arr =  str.split(/ /)
  arr[-2]
end




p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'


=begin
*************Problem***************************
*coding goal
return the second to last word in the string

*initial input: string

*overall output: single word string

*explicit requirements: word is any sequence of non-blank characters
the string will always have at least 2 words

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
	1. define method
  string.split(//)
    use select method
      select [-2] index of array
      return


B. sub-methods (code steps in words)
	1.
=end