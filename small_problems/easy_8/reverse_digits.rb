def reversed_number(int)
   int.to_s.reverse!.to_i
end




p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

=begin
*************PROBLEM***************************
*coding goal: reverse the integer numbers, without worrying about leading zeros

*initial input: integer

*overall output:integer in reverse order

*explicit requirements: reverse numbers, ignoring leading/trailing zeros

*implicit requirements: only integers are included
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)
- reversed_number(456) == 654
*add edge cases, 0 and empty:
- 1 <- is singular, and could be considered an edge case
*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
	1. define reversed_number method
integer to a string
string.reverse
string to int.


B. sub-methods (code steps in words)
	1.
=end