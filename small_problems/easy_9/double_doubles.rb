def twice(arg)
   big = arg.to_s.split(//)
   half = big.count / 2
  if big.count.even? && big[0..half - 1] == big[(half)..-1]
      arg
    else 
      arg * 2
    end
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

=begin
*************PROBLEM***************************
*coding goal: return number x2 unless it's a double number (first and back
 half are the same). then return self

*initial input: digits or string

*overall output: number x2 ,or self if a 'double number'

*explicit requirements: double numbers are even number in length

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
	1. define twice method
    if argument is even number of digits
      arg.split(2)  if array[0] == arr[1], return number
    else  return number x 2


B. sub-methods (code steps in words)
	1.
=end