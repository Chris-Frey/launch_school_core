def print_in_box(string)
  length = string.size
  puts "+" + ("-".center(length + 2, "-")) + "+"
  puts "|" + (" " * (length + 2)) + "|"
  puts "|" + (string.center(length + 2,)) + "|"
  puts "|" + (" " * (length + 2)) + "|"
  puts "+" + ("-" * (length + 2)) + "+"

end