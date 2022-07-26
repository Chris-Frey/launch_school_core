# input: string argument
# output: string with no directly repeating characters
# letters and numbers only

# examples given

# take the input
# delete any copies directly after first
# output to new string

# definte a method
# take argument 
# set an index counter
# compare current index to next
# if they are the same, delete the second
#   if they are different, move to index after the 'different' characters
# output final result (result should == true to test cases)

def crunch(arg)
index = 0
arr = arg.chars
 current_letter = arr[index]
 next_letter = arr[index += 1]

  loop do
    if current_letter == next_letter
  p  arr.delete_at(index)
    
    index += 1
    break if index == arg.length
  end
end

end




p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''




=begin
*************PROBLEM***************************
*coding goal:

*initial input: 

*overall output:

*explicit requirements:

*implicit requirements:
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
	1. 


B. sub-methods (code steps in words)
	1.
=end