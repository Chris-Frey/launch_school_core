=begin
(​https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0​) 7 kyu

Alphabet symmetry
Consider the word "abode". We can see that the letter 
a is in position 1 and b is in position 2. In the alphabet, 
a and b are also in positions 1 and 2. Notice also that d 
and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.
Given an array of words, return an array of the number of 
letters that occupy their positions in the alphabet for 
each word. For example,
solve(["abode","ABc","xyzD"]) = [4, 3, 1] 
Input will consist of alphabet characters, 
both uppercase and lowercase. No spaces. Good luck!

=end

=begin
Goal: find the number of letters that are in the same number 
position of their word, as they are in the alphabet

input: array of strings
output: array of strings

rules:
- includes uppercase and lowercase letters
- letters shouldn't be case sensitive
- no spaces
- no numbers
- no special characters

create an alphabet array to compare against
create a return array
iterate over the input array and check the letters of
  each word individually. 
    nested iteration? each? each_char?
count the number of letters that are in the correct position
  add the number to a new array
  return array after all quantities have been added.

=end

def solve(arr)
  alphabet = ('a'..'z').to_a
  solution = []
  d_arr = arr.map { |x| x.downcase}
  counter = 0
  length = 0
  temp_arr = []

  d_arr.map do |a|
    # p a.length
  #  p temp_arr = []
    a.each_char do |letter|
      if temp_arr.include?(letter)
        length += 1
      elsif a.index(letter) == alphabet.index(letter)
        temp_arr << letter
         counter += 1
         length += 1
      end

      p counter
      if length == a.length
      solution << counter
      counter = 0
      length = 0
      end 
    end
  end
  p solution

end


# p solve(["abode","ABc","xyzD"]) == [4,3,1]
# p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7] 
# p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]