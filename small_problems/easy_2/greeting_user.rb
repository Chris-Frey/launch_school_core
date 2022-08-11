puts "What is your name?"
name = gets.chomp.to_s

if name.end_with?("!")
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
puts "hello #{name}"
end
