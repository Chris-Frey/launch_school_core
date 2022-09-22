# *************Problem***************************

# initial input: array

# overall output: SAME! array with elements reversed

# explicit requirements:
# the array must be mutated in place

# implicit requirements:
#  pass by reference
#  will likely need a '!' method
#  MAY NOT USE Array#reverse or Array#reverse!

# questions:
 

# *************Examples and Test cases************

# ++restate all test cases given
# none
# ++add edge cases, 0 and empty:

# *************Data Structure*********************

# any patterns from test cases, or 
# notable data structure:


# ************Algorithm***************************

# A. Main Method (high-level | What is my overarching process)
#   1. rotate the values in the array so they end up reversed


# B sub-methods (code steps in words)
#   1. method
    # call rotate! on array elements list.length.times {|x| }

def rotator!(list)
  counter = 1
  (list.length / 2).times do |x| 
  y = list[counter - 1]
  list[counter - 1] = list[counter * -1]
   list[counter * -1] = y
   counter += 1
  end
   list
end


# p rotator([1,2,3,4])
p list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

# p rotator(%w(a b e d c))
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# p rotator(['abc'])
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# p rotator([])
# reverse!(list) == [] # true
# list == [] # true