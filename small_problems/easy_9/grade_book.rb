def get_grade(n1, n2, n3)
  p average = (n1 + n2 + n3) / 3
  case 
  when average >= 90 && average <= 100
    p 'A'
  when average >= 80 && average < 90
    p 'B'
  when average >= 70 && average < 80
    p 'C'
  when average >= 60 && average < 70
    p 'D'
  when average >= 0 && average < 60
    p 'F'
  end
end



p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"


=begin
*************PROBLEM***************************
*coding goal: determine the average of scores, and return
and associated letter grade

*initial input: 3 numbers

*overall output: string of letter grade

*explicit requirements:all values are between 0 and 100

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
	1. define the get_grade method
  take arguments from provided 3 sets of numbers
  add the numbers together and divide by 3
  compare the final number to the score ranges provided
  return the final letter grade


B. sub-methods (code steps in words)
	1.
=end