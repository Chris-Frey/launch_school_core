# count = 1

# loop do
#   if count.odd?
#     puts "#{count} is an odd number"
#   else
#     puts "#{count} is an even number"
#   end
#   count += 1
#   break if count > 5
# end



# loop do
#   number = rand(100)
#   puts number
#   break if number >= 0 && number <=10
# end



# process_the_loop = [true, false].sample
# x = 0
# loop do
#   if process_the_loop == true
#     puts "the loop was processed"
#     break if x==1
#     x =+ 1
    
  
#   else
#     puts "the loop wasn't processed"
#     break
#   end
# end



# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct"
#     break
#   else 
#       puts "Wrong. Try again!"
#   end
# end



# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5``
# end
# puts numbers



names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   name = names.shift 
#   puts name
#   break if names.empty?
# end



# 5.times do |num|
#   puts num
#   break if num == 2
# end



# number = 0

# until number == 10
#   number += 1
#   next if number.odd? 
#     puts number
#   end
# end



# number_a = 0
# number_b = 0

# loop do
#     if number_a == 5 || number_b == 5
#       puts "5 was reached"
#       break
#     else
#     number_a += rand(2)
#     number_b += rand(2)
#     next
#     end
#   break
# end



# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   puts greeting
#   number_of_greetings -= 1
# end