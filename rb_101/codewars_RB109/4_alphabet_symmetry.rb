=begin
NOT SOLVED. PROBABLY HAVE TO MAKE A LOOP.
IF THERE ARE MULTIPLE OF A LETTER, IT USES THE ANSWER TO
WHICHEVER LETTER CAME FIRST.
FINISHED IN 18 MIN

FINISHED IN 18 MIN
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b
are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet,
which are positions 4 and 5.
Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example, solve
["abode","ABc","xyzD"] = [4, 3, 1]
See test cases for more examples.
Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
=end

=begin 
Goal: Find the number of letters that are in thier alphabetical location in the words. return those numbers in an array 

Input: array of strings
output: array of numbers

Rules:
no spaces 
upper AND lowercase words
only alphabetical characters. no numbers/special characters etc.

Data structure
array 
string 

Algorithm
*create  reference arrays for lowercase and upercase alphabet
*create a counter
*create new empty array
iterate over the Array
  nested iteration over the letters in each word
    if the index of the letter and the index in either of the arrays are the same 
then increase a counter
push final number of counter into a new array
reset the counter for next word
return the final array after all words are done 
=end 

def solve(arr)
  arr_d = arr.map {|x| x.downcase}
  lower = ('a'..'z').to_a 
  counter = 0
  solution_arr = []

  arr_d.map do |word|
    counter = 0
    word.each_char.with_index do |let, idx|
      # p lower.index(let)
      p word[let]
      # p let
      if let[idx] == lower.index(let)
        # p let
        counter += 1
      end
    end
     solution_arr << counter
  end
   solution_arr
end


# p solve(["abode","ABc","xyzD"]) #== [4,3,1]
# p solve(["abide","ABc","xyz"]) #==[4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) #== [6,5,7]
# p solve(["encode","abc","xyzD","ABmD"]) #== [1, 3, 1, 3]
