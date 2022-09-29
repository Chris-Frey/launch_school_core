def repeater(string)
  new_str = ''

  string.each_char do |x|
    new_str.concat(x + x)
  end
  p new_str
end




p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

=begin
*************Problem***************************
*coding goal: return a string with every character in argument doubled

*initial input: string

*overall output: new string

*explicit requirements: none

*implicit requirements: none
 
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
	1. define repeater method
    iterate over argument with each 
    concat each letter 2 times to the new string


B. sub-methods (code steps in words)
	1.
=end