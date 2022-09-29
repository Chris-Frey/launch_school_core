def substrings(str)
  letters = ''
  full_arr = []
  counter = 0
  init_array = str.split(//)

    loop do
      init_array[counter..str.size].map do |string|
        full_arr << letters += string
      end
      counter += 1
      break if counter == init_array.length
      letters = ''
    end
  p full_arr
end




p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

=begin
*************Problem***************************
*coding goal: return array of substrings for each string input, ordered by index

*initial input: string

*overall output:array of substrings

*explicit requirements: use the method written on the leading substrings assignment

*implicit requirements: string will never be empty
 
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
	1. copy method from last assignment
    add a counter so it runs again on every letter, not just the first


B. sub-methods (code steps in words)
	1.
=end