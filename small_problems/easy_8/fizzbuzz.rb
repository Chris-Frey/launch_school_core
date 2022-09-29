# OPTION 1
# def fizzbuzz(num1, num2)

#   final_string = ''
#   (num1..num2).each do |num|
#     case
#     when num % 3 == 0 && num % 5 == 0
#       final_string += 'FizzBuzz, '
#     when num % 3 == 0
#       final_string += 'Fizz, '
#     when num % 5 == 0
#       final_string += 'Buzz, '
#     else  
#       final_string.concat("#{num}, ")
#     end
#   end
#     p final_string
# end

# OPTION 2
def fizzbuzz(num1, num2)
  final_string = []

  (num1..num2).each do |num|
    case
    when num % 3 == 0 && num % 5 == 0
      final_string << 'FizzBuzz'
    when num % 3 == 0
      final_string << 'Fizz'
    when num % 5 == 0
      final_string << 'Buzz'
    else  
      final_string << num
    end
  end
    p final_string.join(', ')
end



fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin
*************Problem***************************
*coding goal: to replace digits with fizz/buzz matching requirements

*initial input: 2 integer arguments

*overall output: string of integers and words

*explicit requirements: 
-if number is divisible by 3: Fizz
-if number is divisible by 5: Buzz
- if number is divisible by 3 && 5: FizzBuzz

*implicit requirements: none
 
*questions:
 
*************Examples and Test cases************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************Data Structure*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************Scratch Pad***********************
-
************Algorithm***************************

A. Main Method (high-level | What is my overarching process)
	1. Define fizzbuzz method
    each if number is between A and B 3 % 0 or 5 % 0. 
    case statement when
      both 3 and 5: fizzbuzz
      3: fizz
      5: buzz
    else number
    end


B. sub-methods (code steps in words)
	1.
=end