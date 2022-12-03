=begin
goal: multiply each number from the first array by each number from the 
second array. sorted from small to large

input: array
output: sorted array from small to large

data: use arrays

set parameter for each input
ierate over first array and multiply each number by second array
   map? to create a new array
   sort new array
   return
=end

def multiply_all_pairs(inp_1, inp_2)
  index = 0
  solution = inp_2.map do |num|
    inp_1.map do |nums|
      nums * num
    end
  end
  solution.flatten.sort!
end



p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]