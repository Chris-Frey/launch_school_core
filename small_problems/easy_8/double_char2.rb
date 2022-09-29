def double_consonants(str)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
  arr = []
  result = []
  ref_array = alphabet - %W('a e i o u A E I O U')

  arr = str.split(//)
  arr - ref_array
  # p arr
  arr.map do |x|
    if ref_array.include?(x)
      result << x + x
    else 
      result << x
    end
  end
  result.join
end



p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""





=begin
*************Problem***************************
*coding goal: return new strings with consonants entered twice

*initial input: string of letters and numbers

*overall output: string of letters and numbers

*explicit requirements: ONLY CONSANANTS should be doubled

*implicit requirements: none
 
*questions:
 
*************Examples and Test cases************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:
edge case of empty string ""

*************Data Structure*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************Scratch Pad***********************
-exclude all the other characters, or only check against a list?
************Algorithm***************************

A. Main Method (high-level | What is my overarching process)
	1. define double_consonants method
      split string into array
      make array of full alphabet
      delete aeiou from those arrays
      use arrays.include?(input)
      if yes, add double, else just add regular.


B. sub-methods (code steps in words)
	1. 
=end