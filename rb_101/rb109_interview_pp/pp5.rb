#SOLVED IN ~12 MINUTES
# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.


=begin
goal: downcase all characters, find the character with the elast number of occurances, and return that character. if more than 1 character is the lowest, return the first to occur in the string.

Input: String
output: string of 1 letter

explicit rules 
case insensitive
  if tie for lowest, return first occurances

implicit
- include punctuation
- include spaces?

data structures:
- Array
- String

Algorithm
- take in string input 
- downcse string
- split string by character 
- tally array (creates a hash) and put result into a variable
- find the minimum value in the hash
return the key of the value (which should give me the first applicable key

=end

def least_common_char(str)
  spl_str = str.downcase.split(//).tally
  spl_str.min_by { |k, v| v }[0]
end
# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'




#OR ANOTHER ANSWER

# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin 
goal: find the character that occures least often in a string. Just the first letter if there are multiple that meet the criteria

input: string 
output: 1 letter string 

rules
no numbers in the string
string can have special characters
spaces count

data:
strings
possibly arrays
maybe hash if i use tally

algorithm
split the string into letters/characters .split(//)
iterate over each letter and count the number of instances
  use tally to find the number of each element
  sort by value value
  return the key to the value with the smallest number
=end 

def least_common_char(str)
  tallied = str.downcase!.split(//).tally
  arr = tallied.sort_by { |k, v| v}
  arr[0][0]
end




p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

