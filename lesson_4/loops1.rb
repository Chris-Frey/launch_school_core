# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'



# iterations = 1

# loop do
#   until iterations > 5
#   puts "Number of iterations = #{iterations}"
#   iterations +=1
#   end
#   break
# end


# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end



# say_hello = true

# while say_hello
#   5.times {puts 'Hello!'}
#   say_hello = false
# end



# numbers = []

# while numbers.length < 6
#   numbers << rand(100)
# end
# puts numbers



# count = 1

# until count > 10
#   puts count
#   count += 1
# end



# numbers = [7, 9, 13, 25, 18]
# num = numbers

# until num.length == numbers.length
#   num << numbers
# end
# puts num



# for i in 1..100
#   puts i if i % 2 == 0

# end



friends = ['Sarah', 'John', 'Hannah', 'Dave']

for x in friends do  
  puts "hello, #{x}" 
end