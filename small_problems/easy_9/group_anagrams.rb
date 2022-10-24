words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  test = words
  arr = []
  count = 0
test.map do |word|
   if word.split(//).sort.join ==  word[1].split(//).sort.join
    arr << word
  end
  p arr
end


=begin
*************PROBLEM***************************
*coding goal: output words that are anagrams of each other from the
given array

*initial input: array of strings

*overall output: array of strings, containing anagrams

*explicit requirements:

*implicit requirements:
- each wordgroup is in a different array
 
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
	1. define method
  iterate over each word in array and determin if other words have the same
  letters excatly, but not necessarily in the same order. can use a sort method
  add each word that matches, to the array. create a new array for each
  word combo


B. sub-methods (code steps in words)
	1.
=end