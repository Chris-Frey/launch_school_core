def uppercase?(str)
  arr = []
  str.each_char do |x|
    if /\w/.match?(x) && x != x.upcase
      arr << false
    else
      arr << true
    end
     arr
  end
  if arr.all?(true)
    true
  else
    false
    
  end
end



p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true



=begin
*************PROBLEM***************************
*coding goal: true if all letters are uppercase, false otherwise

*initial input: string

*overall output: true/false

*explicit requirements: ignore non-alphabetic characters

*implicit requirements:
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:
 -edge case of empty string
*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
	1. define uppercase method
       reference /\w/.match?()
      each.char to reference array
      when /\w/.match?(x) && x.upcase == true
        then true
      when 
      else false


B. sub-methods (code steps in words)
	1.
=end