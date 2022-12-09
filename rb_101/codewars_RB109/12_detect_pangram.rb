=begin https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

goal: detect whether or not the given string is a pangram

input: non-empty string
output: boolean true/false

string must contain all letters in the alphabet, NOT case-sensitive, ignore punctuation

data structures:
  array
  string

Algorithm

downcase and split input
split the input string into an array
check to see if the input array includes everything in the letter array
If yes, return true
else false

=end

def pangram?(str)
  alph = ("a".."z").to_a
  pan = str.downcase.split(//)

  if pan.all? { |element| alph.include?(element)}
    p "yes"
  else
    false
  end
  
end




p pangram?("The quick brown fox jumps over the lazy dog.") == true
# p pangram?("This is not a pangram.") == false