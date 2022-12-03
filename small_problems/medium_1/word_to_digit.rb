=begin
P- 
write a method that takes a string and turns the word
numbers into integer numbers. Mutates string, not a new return

Examples
('Please call me at five five five one two three four. Thanks.') == 
'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data structures needed
- array
- hash
- string

Algorithm
MAIN
  create a hash with the words as values and the numbers as keys
  split the input string by non-alphanumeric characters
  check each sub-array to see if it matches a value
    if there, index reassign the word in the array with its key
      join string with spaces
=end
def word_to_digit(str)
nums = {
        1 => "one",
        2 => "two",
        3 => "three",
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight",
        9 => "nine",
        0 => "ten",     
}


  # str_arr = str.split()
  # p str_arr
  str.each do |x|
    if x == 
    x.gsub!(nums[value], nums[key])
  end
  # if str.include?(nums.values)
  #   p nums.values
  # end
end

word_to_digit('Please call me at five five five one two three four. Thanks.') 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'