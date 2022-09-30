def negative(num)
  if num > 0
    num * -1
  else
    num
  end
end




p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby


=begin
*************PROBLEM***************************
*coding goal: return a negative number or zero 

*initial input: number

*overall output:negative number, or zero

*explicit requirements: there is no negative 0

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
	1. define negative method
      take argument. if arg is greater than zero, multiply by -1.
        else return number


B. sub-methods (code steps in words)
	1.
=end