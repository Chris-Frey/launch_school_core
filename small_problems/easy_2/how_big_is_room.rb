puts "hello, enter the length of the room in meters"
length_m = gets.chomp.to_f

puts "enter the width of the room in meters"
width_m = gets.chomp.to_f

area_m = length_m * width_m
area_f = area_m * 10.7639
puts "the are of the room is #{area_m} square meters (#{area_f} square feet)"