
# *************Problem***************************

# initial input: integer of number of requested digits in sequence

# overall output: index number of the first number that contains
# the number of digits specified

# explicit requirements:
# return an integer of an index value

# implicit requirements:
#  need to calculate fibonocci numbers with a formula

# questions:
 

# *************Examples and Test cases************

# # ++restate all test cases given
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# ++add edge cases, 0 and empty:
# none. number will always be greater than or equal to 2

# *************Data Structure*********************

# ++the steps the data takes in between input 
# 	and output listed above

# ************Algorithm***************************

# A. Main Method

# 1. create a counter
# create a loop
#   loop should add the previous number, to the current number
#   to get the next number (special consideration for '1, 1' at the start)

#  2.  write method check to see if num is the correct number of digits
#   (.lenght) (from first method)
#   return first hit of correct number



def find_fibonacci_index_by_length(num)
  index = 0
  number = 1
  arr = []
  loop do
    if number <= 2
      arr << 1
    else arr << arr[-1] + arr[-2]
    end
    if arr[index].digits.size == num
      index +1
      break
    end
    number +=1
    index += 1
  end
index + 1
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847