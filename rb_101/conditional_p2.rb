RATTLESNAKE = 12.3
COPPERHEAD = 21.6
COTTONMOUTH = 3.2
SCORPION  = 15.8

def vial_calculation(poison_deadliness, human_weight)
  antivenom_effectiveness = 100

  poison_strength = poison_deadliness.to_f / human_weight * 1000

  vials_needed = (antivenom_effectiveness / poison_strength).round(2)
end

vial_calculation(RATTLESNAKE, 189)
p vials_needed



=begin
# show the equation
Steve works in an animal poison control center. He lives an area with many deadly
# ask why we're not getting the right answer
# what can we do to get the right answer
=end