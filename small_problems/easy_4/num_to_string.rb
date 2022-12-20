=begin 
30 MIN TO SOLVE
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.
=end 

=begin 
Goal: convert numbers to a string without 1-click methods

input: integers
output: string 

rules: no one-click methods
no letters/characters
no negatives
no floats
just 0 is a possibility

data structures:
hash
maybe array?

Algorithm
compare input to Hash
  ##if number matches a key, put the value into an empty string 
  ##  like: if 
  divide the number by 1000
  number - (x * 1000)
  return the string
=end 

def integer_to_string(num)
  numbers = { 1 => "1",
              2 => "2",
              3 => "3",
              4 => "4",
              5 => "5",
              6 => "6",
              7 => "7",
              8 => "8",
              9 => "9",
              0 => "0",
            }
  return_string = ''
  divisor = 1000
  counter = num.digits.size

  loop do
    temp_int = num / divisor
    if numbers.keys.include?(temp_int)
      return_string.concat(numbers[temp_int])
    end
   
     num = num - (divisor * temp_int)
    divisor = divisor / 10
    counter -= 1
    break if counter == 0
  end
  return_string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'