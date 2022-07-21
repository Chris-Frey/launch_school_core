# ask user for two numbers
# ask user for an operation to perform
# perform operation on the two numbers
# output the result

#answer = Kernal.gets.chomp 
#puts answer

Kernel.puts("welcome to the calculator!")

Kernel.puts("what's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("what is the second number?")
number2 = gets().chomp()

Kernel.puts("what operation would you like to perform? 1)add 2)subtract 3)multiply 4)divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
elsif operator == '4'
  result = number1.to_f() / number2.to_f()
end

# Kernel.puts(number1.inspect)
Kernel.puts("the result is #{result}")