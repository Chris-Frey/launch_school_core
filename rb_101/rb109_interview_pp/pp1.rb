=begin
Given an array of numbers, for each number find out how many numbers
in the array are smaller than it. When counting numbers, only count
unique values. That is, if a given number occurs multiple times in
the array, it should only be counted once.

goal count the quantity of numbers in an array that are smaller
than each integer in the array.

rules: no empty arrays
each number should only be evaluated once

example:
[8,1,2,2,3]) ==> [3, 0, 1, 1, 2]
8 > 1, 2, 3 => 3

Algorithm
iterate with select
select number less than the indexed number, into an array
count the numbers in that array
put that number into solution array
=end

def smaller_numbers_than_current(arr)
  index = 0
  selected = []
  current = index

  selected = arr.select do |num|
    arr[index] > num
    index += 1

  end
  p selected
end



# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".