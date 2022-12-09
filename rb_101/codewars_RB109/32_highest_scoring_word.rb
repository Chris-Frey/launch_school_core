=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

=end 

=begin
Goal: score words based on alphabetical position. return the string of the highest scoring word. If 2 are the same, choose the first in the string.

Rules:
all inputs are lowercase and valid
no numbers
spaces don't count for anything
no special characters
a = 1 and z = 26

example:  'abc' => 1 + 2 + 3 => 6 points

Data structures
arrays
hash
strings

Algorithm
make a reference array of the alphabet *
split the words into an Array*
iterate over each word in the array via their characters
compare each input character to the index of the reference array
put result into a new array and sum that Array
put all result sums into final array 
take the index of the largest number and return that string from the original array
=end

def high(str)
  alphabet = ('a'..'z').to_a
  spl_str = str.split(" ")
  result = []

  spl_str.each do |word|
    subar = []
    word.each_char do |char|    
      subar << (alphabet.index(char) + 1)
    end 
    result << subar.sum
  end 

  answer = result.index(result.max)
  spl_str[answer]
end




   p high('man i need a taxi up to ubud') == 'taxi'
   p high('what time are we climbing up the volcano')== 'volcano'
   p high('take me to semynak') == 'semynak'
   p high('aa b') == 'aa'
   p high('b aa') == 'b'
   p high('bb d') == 'bb'
   p high('d bb') == 'd' 
   p high('aaa b') == 'aaa'

   https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/ruby