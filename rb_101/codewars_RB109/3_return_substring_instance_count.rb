=begin
TOOK 30 MIN
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1
=end

=begin 
Goal: count the number of times a string occurs in a longer string, and return the number
input: string 
output: integer 

Data structure
string 
array?
scratchpad:
split by second input and then count
Algorithm
split input 1 into an array(keep the item splitting by "()". split by the value of input 2
count method on array with the argument being input 2
=end 

def solution(inp1, inp2)
  p spl_str = inp1.split(inp2, -1)
  final = spl_str.count - 1
 end
 
 p solution('abcdeb','b') #== 2
 p solution('abcdeb', 'a') #== 1
 p solution('abbcbbcbbcbbabbc', 'bb') #== 1