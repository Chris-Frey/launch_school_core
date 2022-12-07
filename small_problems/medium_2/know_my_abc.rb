=begin 
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

=end
=begin 
Goal: determin if a string can be spelled with the available letters in the pairs. only one letter from a pair can be used. returns false if both letters from a pair are used.

Rules:
no numbers
will be a String
only 1 letter per pair can be used
return false if the input does not return true 
NOT CASE SENSATIVE

Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Data types:
strings
arrays

Algorithm
create an array with each block pair as subarrays [[a, b], [a, c]...]
iterate over input string: if the input contains all? of each block, return false, else true.
return true/false

=end 
def block_word?(input)
  ref_array = ["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"],["N", "A"], ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"], ["Z", "M"]

  ref_array.each do |x|
    if input.include?(x[0]) == true && input.include?(x[1]) == true
      return false
    else return true
    end
  end
end


p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
p block_word?('Thanks') #== false
p block_word?('WJR') #== false