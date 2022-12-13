=begin 
https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby
SOLVED IN 4 MINUTES
Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

It should remove all values from list a, which are present in list b keeping their order.

array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]
=end

=begin 
Goal: subtract list b from list a 

input: 2 array arguments
output: 1 array with remaining numbers

rules
all instances of list b, in list a, must be removed

Data structures:
arrays

Algorithm
subtract second array from first array
=end 

def array_diff(arr1, arr2)
  arr1.difference(arr2)
end

#OR
def array_diff(arr1, arr2)
  arr1 - arr2
end

# test cases 
p array_diff([1,2], [1]) ==  [2]
p array_diff([1,2,2], [1]) ==  [2,2]
p array_diff([1,2,2], [2]) ==  [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_diff([1,2,3], [1,2]) ==  [3]
