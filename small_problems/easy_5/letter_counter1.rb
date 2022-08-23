def word_sizes(str)
  arr = []
  arr = str.split
  p arr.each.with_index(1).to_a.map.to_h
  p arr
end





p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }

# take string
# split string to array
# length of each word