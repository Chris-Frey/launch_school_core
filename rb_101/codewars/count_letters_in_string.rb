=begin
https://www.woolx.com/
1.Count letters in string 
(https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/train/ruby)
6 kyu

=begin
Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.

Example:

letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
=end

=begin
GOal count the occurance of each lowercase letter in the string and return a hash with the key turned into a symbol (letter) and the quantity as a value.

input: string, 1 word
output: hash

rules:
- all lowercase
- no empty strings
- no puncutation
- keys in alphabetical order

examples

data structures
- String
-array
-hash

Algorithm
- take string input 
- split the string at each letter and assign to variable
- iterate over letters (map!) to turn them to symbols (.to_sym)
- tally on converted symbols (assign this to a variable)
- sort_by! keys

=end

def letter_count(str)
  str.split(//).map! { |ele| ele.to_sym }.sort.tally
end