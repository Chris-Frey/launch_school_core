=begin
https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby

You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}:
Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

Output:
The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

Note:
If you are given an array with multiple answers, return the lowest correct index.
=end

=begin
*************PROBLEM***************************
*coding goal: to find the index of the number where the integers to the left of the index, and to the right of the index, both add up to the same number

*initial input: Array of numbers

*overall output: single digit representing the index of the 'middle' number

*explicit requirements:
return -1 if there's no index that will make both sides equal.
- take the first index, if multiple indicies are valid
*implicit requirements:
- no empty arrays
- only positive, negative, and 0. no strings/symbols
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************
- arrays, return integer
**any patterns from test cases, or 
  notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1.  start with index 0, skip index 1, and summ the rest of the array. then index 0, 1, and then skip index 2, sum the rest of the array.

  create Loop 
  - look at first number
  - look at the first (number +2 ) and sum the rest - compare sums.
  - break loop if both sums are equal
    {if first == (index + 2..(arr.length)).sum }
  - look at first 2 numbers, skip third, sum the rest. - compare sums
  - break loop if both sums are equal
  - return the index number that we skipped
  -else return -1

B. sub-methods (code steps in words)
  1.
=end

def find_even_index(arr)
  index = 0
  counter = 2
  arr_size = arr.length - 1
  left_side = []
  
  # p arr[0]...arr[index]

  loop do 
    right_side = arr[((arr.length - counter) * - 1)..arr_size]
    # right_side = (arr[(index +2)..arr_size]).sum
    left_side = (arr[0..index])

    # puts "Left #{left_side} "
    # puts "Right: #{right_side}"
    # puts "Left.sum #{left_side.sum} "
    # puts "Right.sum: #{right_side.sum}"
    # p "Index: #{index}"
    # p "counter: #{counter}"
    # p "sum: #{left_side.sum + right_side.sum}"

    if index == arr_size && left_side.sum == arr[index]
      return index
    end

    if arr[1..-1].sum == arr[0]
      return index
    end

    if index == 0 && arr.sum == 0
      return index
    end

    if index == 0 && right_side.sum == arr[index]
      return index
    end
  
    if left_side.sum == right_side.sum
      return counter - 1
    end

    index += 1
    counter += 1

    if index == arr.length
      return - 1
    end

  end
end





# test cases

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 #"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1


# def find_even_index(arr)
#   for index in arr do
#     p index 
#     p arr[0..index].sum
#     p arr[index + 1..arr.size].sum
     
#     break if arr[0..index].sum == arr[index + 1..arr.size].sum
#       return index
#     end
#   # end
# end

# p find_even_index([1,2,3,4,3,2,1])