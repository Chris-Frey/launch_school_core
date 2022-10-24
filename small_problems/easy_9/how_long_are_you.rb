def word_lengths(str)
  arr = []

   split_string = str.split(/ /)
  split_string.map do |x|
    arr << x + " " + x.length.to_s
  end
   arr
end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []


=begin
*************PROBLEM***************************
*coding goal: return array with word and word length as one string

*initial input: string

*overall output: array of strings

*explicit requirements: all words separated by one space. each non-space
character substring is a word

*implicit requirements: characters combined with letters are the same word
 
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
	1. define word_lengths method
    split string into words with arg.split(/ /)
    map string length ( arg.map |x| arr << x + " " + x.length)

B. sub-methods (code steps in words)
	1.
=end