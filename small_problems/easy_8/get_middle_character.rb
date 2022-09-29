def center_of(str)
  arr = str.split(//)
  size = arr.length
  if size.odd?
     arr[size / 2]
  else  arr[(size / 2 - 1)] + arr[(size / 2) ]
  end
end



p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

=begin
*************PROBLEM***************************
*coding goal: return middle character if even, or 2 middle if odd (string)

*initial input: string of characters

*overall output: string of 1 or 2 characters

*explicit requirements: 

*implicit requirements: spaces count as characters
 
*questions:
- new string or modified string?
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:
  - center_of('Launchschool') == 'hs'
- center_of('x') == 'x'

**************SCRATCH PAD***********************
- divide length in half, if even do half and half)
  for negative index
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
	1. define center_of method
    string.split(//)
    if string.count is even, return string[-2..-3]
      if string.count is odd, return string / 2 rounded up * -1


B. sub-methods (code steps in words)
	1.
=end