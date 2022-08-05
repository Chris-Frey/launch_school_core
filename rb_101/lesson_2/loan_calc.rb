# Loan Calculator for monthly interest rate,
# loan duration in months, and monthly payment
require "pry"

def prompt(message)
  puts "=> #{message}"
end

def valid?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

prompt("Hi there, welcome to the Loan Calculator!
  \n\ Please enter your loan name")
name = gets.chomp

prompt("great! let's figure out the parameters of your #{name} loan")

amount = ''
loop do
  prompt("what is your loan amount?")
  amount = gets.chomp
  if valid?(amount)
    prompt("Great, let's move on to your APR")
    break
  else
    prompt("Let's try that again...")
  end
end

rate = ''
loop do
  prompt("What is your Annual Percentage rate? (e.g. 4.5, 10, etc.)")
  rate = gets.chomp
  if valid?(rate)
    prompt("Awesome, one last piece of info to get!")
    break
  else
    prompt("that doesn't quite seem like a valid input, give it another go")
  end
end

duration = ''
loop do
  prompt("How many months is your loan for?")
  duration = gets.chomp
  if valid?(duration)
    prompt("Thank you!")
    break
  else prompt("That doesn't seem right, try again.")
  end
end

# payment = p * (j / (1 - (1 + j)**(-n)))
payment = amount.to_f * (((rate.to_f / 12) / 100) /
(1 - (1 + ((rate.to_f / 12) / 100))**(-duration.to_i)))

prompt("Looks like your monthly payment will be approximately:
  $#{payment.to_f.truncate(2)} a month for
  #{duration} months if you ride out the full loan")
