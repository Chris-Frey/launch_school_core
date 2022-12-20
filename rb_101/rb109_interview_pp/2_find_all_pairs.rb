=begin
GOAL: calculate the number of pairs in each input
each pair can only count once

input: array
output: integer OR 0

Examples:
[1, 2, 5, 6, 5, 2]  -->  2 #there are 2 2's, and 2 5's

Data structure:
arrays
integers

Algorithm
take in the array and iterate over it
  do a count for each number in the array

    divide each count by 2. any odd numbered ones should round down
    add the divided numbers together and return it as an integer
=end

def pairs(arr)
  counter = 0

  test = arr.group_by { |x| x}
  p test
   test.map do |k, v| 
    if v.count > 1
      counter += (v.count / 2)
    end
  end
  p counter
end



# p pairs([1, 2, 5, 6, 5, 2]) == 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
# p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
# p pairs([1000, 1000]) == 1
# p pairs([]) == 0
# p pairs([54]) == 0

