
puts "Please write a word or multiple words:"
input = gets.chomp
num_total = input.split(" ").join.length

puts "there are #{num_total} characters in '#{input}'"

#provided solution:
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."