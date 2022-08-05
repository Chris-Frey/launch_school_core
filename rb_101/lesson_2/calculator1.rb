# ask user for two numbers
# ask user for an operation to perform
# perform operation on the two numbers
# output the result

# answer = Kernal.gets.chomp
# puts answer

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("welcome to the calculator! Enter your name")
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    Prompt("you must enter something")
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt("what's the first number?")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("That doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("what is the second number?")
    number2 = gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    "what operation would you like to perform? 
      1)add 
      2)subtract 
      3)multiply 
      4)divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  # Kernel.puts(number1.inspect)     to check what's being output
  prompt("the result is #{result}")
  prompt("do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end # main loop

prompt("thanks for using my calculator!")
