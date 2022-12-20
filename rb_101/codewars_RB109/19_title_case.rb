=begin 
SOLVED 26 MINUTES
19. Title Case
(https://www.codewars.com/kata/5202ef17a402dd033c000009)
6 kyu
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.
Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the
minor words string -- it should behave in the same way even if the case of the minor word string is changed.
=end

=begin 
Goal: Capitalize the first letter of every word in the string that isn't on the banned list.  Banned word will be capitalized if it's the first letter of the whole title 

input: string title and list of banned words, if any.
output: updated title in proper case

rules:
list of banned words not needed
capitalize the first letter in first word, regardless of being banned
capitalize the non-banned words 

Algorithm
split title into words 
iterate over each element/word 
downcase all
  at index 0, always capitalize the first letter 
  for the rest of the elements, check against the string of banned words with include?
    if not on banned list, capitalize first letter. index 0
Join words with " "
=end 

def title_case(input1, input2=' ')
  spl_inpt1 = input1.split 
  spl_input2 = input2.downcase.split

  spl_inpt1.map do |elem|
     elem.downcase!
    if elem == spl_inpt1[0]
     elem.capitalize! 
    elsif !spl_input2.include?(elem)
      elem.capitalize!
    else
      elem
    end
  end
  p spl_inpt1.join(" ")
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
p title_case("First a of in", "an often into") == "First A Of In"