=begin
*************PROBLEM***************************
*coding goal: wrote code that takes an integer and returns the enxt 'featured' number. 
featured number:
-odd
-multiple of 7
-digits occur exactly once each

*initial input: integers

*overall output: integer

*explicit requirements:return an error if no next featured number

*implicit requirements: numbers with a comma will use underscores instead. 6+ digits is when commas begin
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************
featured(12) == 21
21 is multiple of 7, odd, and digits occur exactly once
**any patterns from test cases, or 
  notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1. take our numbers
input number / 7. 
  if % 7 equals zero then add 7, else add 1 until % 0*
      if number is even, add 7
     if new number is odd
      and integers occur only once
      then return numbers
otherwise return 'this does not work'.


=end

def featured(num)
  number = num

  loop do
    until number % 7 == 0 && number > num
      number += 1
    end

    if number.even?
      number += 7
    end

     length_test = number.to_s.split(//)
    if length_test.length == length_test.uniq.length
      break
    end

    if number >= 9_999_999_999
      p "ERROR"
      break
    end
    
    number += 1
  end
  p number
end



# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements