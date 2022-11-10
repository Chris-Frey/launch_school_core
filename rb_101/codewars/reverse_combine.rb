=begin 
Your task is to Reverse and Combine Words. It's not too difficult, but there are some things you have to consider...

So what to do?
Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
   (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result...

Input:  "abc def"
Output: "cbafed"

Input:  "abc def ghi 123"
Output: "defabc123ghi"

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"

=end

=begin
*************PROBLEM***************************
*coding goal:reverse each string chunk. combine string chunks into pairs, and repeat until all is one string with no spaces.

*initial input: string chuncks

*overall output: 1 string chunk with no spaces

*explicit requirements: 
- chunks must be reversed every time there is a combining of chunks
- 1 & 2, 3 & 4, etc are combined after reversing in a Loop
- if odd number of chunks, last chunk stays solo until there's an even number

*implicit requirements: 
- no empty strings
- no special characters
- no non-string objects
- single chunk gets returned as-is
 
*questions:
 
*************EXAMPLES AND TEST CASES************
"abc def ghi jkl" --> cbafed ihglkj --> defabcjklghi

*restate all test cases given (or write out an example for clarity)

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
  notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1. split the string by space character
  reverse each string chunck in the Array
  set an index counter to 0
  add 'spl'[index] + spl[index +1]
    add 2 to index counter break at count of >= index length
    reset counter to 0
end/repeat loop
join
    
=end

def reverse_and_combine_text(str)
  index = 0
  arr = []
  output = []
  added = []
  spl = str.split
  
  if spl.count < 2
    return str
  end
  arr = spl.map {|chunk| chunk.reverse}

  # p arr
  loop do
    if arr.count >= 3
      added << arr.shift + arr.shift
    else
      added[0].apend(arr.shift)
    end
      p added
      p arr
      p "is array"
        if index != 0
          output << added.reverse!
      p output
        end
        if arr.length == 2
          return added.join
        end

    index += 2
    break if index >= (spl.length )

  end
 p added.join.reverse

end


# test cases 
# p reverse_and_combine_text("abc def") == "cbafed"
# p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
# p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
# p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"




=begin
"abc def ghi jkl"
  ^___^.  ^___^
"def abc jkl ghi"
----------------------------------------EX 2

"234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44"
   ^_______^.      ^________^.     ^_______^
"53455234hh54   rtteetrtsdfqwzrt lllll12hjhjh 44"
      ^_____________^               ^_________^
calling reverse on each element here: "rtteetrtsdfqwzrt 53455234hh54 44 lllll12hjhjh"
|
expected: "trzwqfdstrteettr45hh4325543544hjhjh21lllll"

=end