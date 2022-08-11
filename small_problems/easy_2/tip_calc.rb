puts "what is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip_amount = bill * (tip / 100)
total = bill + tip_amount

puts "the tip is #{tip_amount}"
puts "the total bill is #{total}"