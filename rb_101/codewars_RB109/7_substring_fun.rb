=begin 
Complete the function that takes an array of words.
You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.
For example:
["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

Goal: take the index letter from each word as it progressivly increases, and concatenate them into a single new word
input: array of strings
output: string

arrays
strings

example
["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
set an index to 0
create an empty array to hold indiviual letters

loop
call the specific letter by indicies (arr[0][0])
store that letter in the empty Array
+= 1 to index
break when the index for arr_index is the same number as the 
  original array length
  join the final array

=end 

def nth_char(arr)
  index = 0
  result = []
  
    loop do
      if arr == []
        return ''
      end
       result << arr[index][index]
      index += 1
      break if index == arr.length
  
    end
   result.join
  end
  
  p nth_char(['yoda', 'best', 'has']) == 'yes'
  p nth_char([]) == ''
  p nth_char(['X-ray']) == 'X'
  p nth_char(['No','No']) == 'No'
  p nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia']) == 'Codewars'