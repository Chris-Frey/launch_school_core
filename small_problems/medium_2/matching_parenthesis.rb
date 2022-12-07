=begin 
TOOK UNDER 14 MINUTES TO COMPLETE
Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

=end

=begin 
Goal: return true if all parentheses are balanced, and return false if they are not.  All parantheses must be in pairs and in the right order

input: String
output: true/false 

rules: parentheses must be in the correct order () not )(
  each opener must have a closer

Data: 
string
array 

Algorithm
pass the input string to the Method
create a count variable
split(//) string into Array
count the number of parenthesis
if no parentheses, return true
every time a closed parenthesis is counted, subtract 1 from a count variable
every time an open parenthesis is counted, add 1 to the count variable
if counter goes below 0, then automatically return Fals
  return false unless counter is 0 at the end of iteration

=end 

def balanced?(str)
  counter = 0
  spl_str = str.split(//)
  
  spl_str.each do |ele|
    if ele == "("
      counter += 1
    elsif ele == ")"
      counter -= 1
    elsif counter < 0
      return false
    end
  end
  if counter == 0
    return true
  else false
  end

end



p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false