
=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
=end

## HINTS
# The String#gsub! method may prove useful in this problem.

# String#gsub! requires a "pattern" argument, which is typically expressed as a regular expression (regex). Regular expressions (regex) are very useful for string operations, but we don't cover them in any detail until RB130. If you haven't already read our book, Introduction to Regular Expressions, you may do so now, but it isn't necessary - this hint provides the only regular expression you need for this problem: if you have a variable named foo that contains some sort of word and want to match that word in a longer string, you can use the regex /\b#{foo}\b/.

def word_to_digit(str)
  hsh = { 1 => "one",
          2 => "two",
          3 => "three",
          4 => "four",
          5 => "five",
          6 => "six",
          7 => "seven",
          8 => "eight",
          9 => "nine",
          0 => "zero"  
}
  a_ray = []
  arr1 = []

  a_ray = str.split(/./)
  p a_ray
  a_ray.select do |ele|
  if hsh.value?(ele) 
    # ele =~ [/[[:word:]]/]
    arr1 << hsh.key(ele)
  end
  p arr1
end

end


# test cases 
word_to_digit('Please call me at five five five one two three four. Thanks. bye') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


=begin
*************PROBLEM***************************
*coding goal: turn word numbers into digits

*initial input: string of words

*overall output: numbers that can go in a string with interpolation

*explicit requirements:

*implicit requirements:
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************
array to hold input split String
hash to hold keys of numbers and values of words
**any patterns from test cases, or 
  notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1. initialize an empty Array
  create a hash with integers as keys and number words as values for 1-9
  iterate through the array and if a word matches a  value, interpolate the key to the sentence string

=end

