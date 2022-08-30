# need to sort numeric numbers by their english string name
# input is number range
# output is numbers sorted alphabetically by phoenetic name

# make a hash that makes the keys numbers, and the values word
# iterate over the hash with select, to choose the keys that match the array input
# sort the k/v pairs by value, then return the values to an array

def alphabetic_number_sort(arr)
hsh = {
  1000 => "thousand",
  100 => "hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19 => "nineteen",
  18 => "eighteen",
  17 => "seventeen", 
  16 => "sixteen",
  15 => "fifteen",
  14 => "fourteen",
  13 => "thirteen",              
  12 => "twelve",
  11 => "eleven",
  10 => "ten",
  9 => "nine",
  8 => "eight",
  7 => "seven",
  6 => "six",
  5 => "five",
  4 => "four",
  3 => "three",
  2 => "two",
  1 => "one"
          }


arr_combined = []
output = []

  hsh.select do |k, v|
    arr_combined << v if arr.include?(k)
  end
  arr_combined.sort!
  hsh.select do |a, b| 
    output << a if arr_combined.each do |x|
      x 
    end
  end
# end
# end
p output
# p arr_combined
end

alphabetic_number_sort((0..19).to_a)