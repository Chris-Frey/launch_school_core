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

loop do
  name = names.shift 
  puts name
  break if names.empty?
end