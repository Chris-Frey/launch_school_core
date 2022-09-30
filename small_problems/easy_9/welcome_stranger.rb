def greetings(arr, hsh)
  greet = "Hello there, "

  puts "=> #{greet}#{arr[0]} #{arr[1]} #{arr[2]}! 
  Great to have a #{hsh[:title]} #{hsh[:occupation]} around!"
end





greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.


=begin
*************PROBLEM***************************
*coding goal: create a sentence with a person's name, occupation, and a greeting
from the given arguments of array and hash

*initial input: array and hash arguments

*overall output: string with references to the array and hash values

*explicit requirements: 
- arrays will contain 2 or more elements

*implicit requirements:
 - add a greeting
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
	1. define the greetings method
    assign a value for greeting to variable 'greet'
    puts the greeting, name, and job title (in a complete sentence) 
    using #{}


B. sub-methods (code steps in words)
	1.
=end