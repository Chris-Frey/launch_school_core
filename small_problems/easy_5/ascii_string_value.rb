def ascii_value(arg)
  new_arr = []
 arg.chars.each do |x|
new_arr << x.ord
end
new_arr.sum
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0