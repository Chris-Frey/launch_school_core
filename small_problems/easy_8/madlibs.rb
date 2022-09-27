def prompt(message)
puts "=> " + message 
end

prompt("Enter a noun: ")
noun = gets.chomp.to_s

prompt("Enter a verb: ")
verb = gets.chomp.to_s

prompt("enter an adjective: ")
adj = gets.chomp.to_s

prompt("Enter an adverb")
adverb = gets.chomp.to_s

p "What if you #{verb} across the #{adj} #{noun} #{adverb}?"