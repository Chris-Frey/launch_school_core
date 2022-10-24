# k = 3
# array = [1, 3, 2, 6, 1, 2]

#   array.each do |ele|
#     count = 0
#     count_hash = Hash.new(0)
#     mod = (ele) % k
#     compl = k - mod == 0 ? 0 : k - mod
  
#     if count_hash.has_key?(compl)
#       count_hash[compl] += 1
#     else
#       count_hash[compl] = 2
#     end
#    p count_hash
#   end




def divisible_sum_pairs(array, k)
  new_arr = []
  output_arr = []
  size = array.length
  index = 0
  count = 1

  loop do
    new_arr << [array[index], array[count]]
    count += 1
      if count == size
      index += 1
      count = index + 1
    break if index == size - 1
    end 
  end
  # p new_arr

  new_arr.each do |arr|
    if arr.sum % k == 0
      output_arr << arr
      # p output_arr
    end
  end
  # p  output_arr
  p  output_arr.count
end


p divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
p divisible_sum_pairs([8, 10], 2) == 1
p divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
p divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15
#   loop do
#     math = array[count] + mirror[index]
#     if math % 3 == 0
#     new_arr << 'x'
#     end
#     index += 1
     
#     break if index == size
#   end

# p new_arr

# loop do

#   loop do
#    if array[count] + array[index] % 3 == 0
#     new_arr << 'x'
#     count += 1
#     break if count == size
#     end
#   end
#   index += 1
#   break if index == size
# end
# p new_arr
# p count
# p index


# # (array.length - 1).times do |x|
#   array.each_with_index do |elem, i|  
#     # if array[i] + array[(array.length) - var] % 3 == 0
#     # while array[i] < 5
#     if (array[i] + array[i + var]) % 3 == 0
#      new_arr << elem
#      var -= 1
#     end 
#     p new_arr
#   end  
# # end


# array.each do |x|
#   # if x[index] < 5
#   #  x[index]
#     #  x[index] + mirror[index] #== 3
#       new_arr << (x[index] + mirror[index])
#     # else
#     #   trash_arr << 'y'
#     # end
#   # end
#   p new_arr
#   # p trash_arr
# end

# loop do
#   p array.each do |x|
#     x[index] + mirror[count]
#   end
#   if count == 5
#   index += 1
#   count += 1
#   break if count == 4
  
# end



# divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
# divisible_sum_pairs([8, 10], 2) == 1
# divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
# divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15


=begin
*************PROBLEM***************************
*coding goal: find the combos of integers in the array(arg1) that when added together are divisible by argument2.

*initial input:  array of numbers, and a single integer

*overall output: Integer (number of valid pairs)

*explicit requirements:
- 2 <= n <= 100
- 1 <= k <= 100
- 1 <= ar[i] <= 100

*implicit requirements:
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)
[1, 3, 2, 6, 1, 2] and divisor 3
  ar[0] + ar[2] = 3 --> [1, 2]
  ar[2] + ar[4] = 3 --> [2, 1]
  ar[4] + ar[5] = 3 --> [1, 2]
  ar[1] + ar[3] = 9 --> [3, 6]
  ar[0] + ar[5] = 3 --> [1, 2]
*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
  notable data structure? what kind can i use:
array 
**************SCRATCH PAD***********************
- 'ar[index]' is the index number of the array
- k is the divisor
- n is the size of the array

iteration: over each index with a Range
  (index..length).each do .....
    .... index += 1

iterates using index as the anchor

if array sum mod % 3 ==0
  count increments by one

************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1. iterate through each array to find the combinations that == multiple of k
    iterate with map array[0] + array[index..size]
    
    array.map.with_index do |element, index| 
      array[index] + array[index..array.size]

B. sub-methods (code steps in words)
  1.
index = 0
size = 6
  loop do
    array[index..size].map do |x|
      if index + (x + 1)

      
=end


# 687. Divisible Sum Pairs 
# (https://www.hackerrank.com/challenges/divisible-sum-pairs/problem)
=begin
Given an array (arr) of integers, and a positive integer k. Find the number of pairs (i, j) having the sum (arr[i] + arr[j]) that is divisible by k and i < j. 

Test cases:
=end