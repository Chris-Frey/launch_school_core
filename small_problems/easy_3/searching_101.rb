entered_num = []
num_return = []

puts "enter 1st number"
num1 = gets.chomp.to_i
entered_num << num1

puts "enter 2nd number"
num2 = gets.chomp.to_i
entered_num << num2

puts "enter 3rd number"
num3 = gets.chomp.to_i
entered_num << num3

puts "enter 4th number"
num4 = gets.chomp.to_i
entered_num << num4

puts "enter 5th number"
num5 = gets.chomp.to_i
entered_num << num5

puts "enter last number"
num6 = gets.chomp.to_i

entered_num.select do |num|
  if num6 > 0 && num6 < num
    num_return << num
  end
end

puts "the number #{num6} appears in #{num_return}."