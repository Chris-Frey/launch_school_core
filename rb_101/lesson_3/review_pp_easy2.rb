# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.include?("Spot")
# p ages.key?("Spot")
# p ages.member?("Spot")



# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.swapcase
# p munsters_description.capitalize
# p munsters_description.downcase
# p munsters_description.upcase



# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# ages.store("Marilyn", 22)
# ages.store("Spot", 237)
# p ages



# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.match?("Dino")



# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w("Fred" "Barney" "Wilma" "Betty" "BamBam" "Pebbles")



# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"



# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.push("Dino", "Hoppy")



# advice = "Few things in life are as important as house training your pet dinosaur."
# p str = advice.slice!(0..38)
# p advice


# statement = "The Flintstones Rock!"
# p statement.count("t")


# title = "Flintstone Family Members"
# p statement.center(40)






# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.include?("Spot")
# ages.any?("Spot")
# ages.key?("Spot")



# munsters_description = "The Munsters are creepy in a good way."
# munsters_description.swapcase!
# munsters_description.capitalize!
# munsters_description.downcase!
# munsters_description.upcase!



# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)



# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.include?("Dino")
# advice.match?("Dino")



# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones << "Dino"

# flintstones.push ("Dino").push("Hoppy")



# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.slice!(0...39 )



# statement = "The Flintstones Rock!"
# statement.count("t")



title = "Flintstone Family Members"
10.times {|x| puts (" " * x) + "flintstones family members"}