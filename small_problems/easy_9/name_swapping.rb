def swap_name(str)
  arr = str.split(/ /)
  arr.reverse!.join(", ")
end




p swap_name('Joe Roberts') == 'Roberts, Joe'


=begin
*************PROBLEM***************************
*coding goal: return a name with lastname, firstname in a string

*initial input: string

*overall output: string

*explicit requirements: insert a comma and space between the names

*implicit requirements: no leading or traling spaces? no numbers
 
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
	1. define swap-name method
      arr = str.split(/ /) 
      arr.reverse!.join(", ")


B. sub-methods (code steps in words)
	1.
=end