=begin
*************PROBLEM***************************
*coding goal: upcase every second character in every 3rd word

*initial input: 
- string

*overall output:
-transformed string with upcases

*explicit requirements:

*implicit requirements:
-no numbers or punctuation
 
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
	1. split the string into an array by spaces
  loop over every third word and use each_char to find the second index of the word
  upcase!
  join with (" ")

B. sub-methods (code steps in words)
	1.
=end
def to_weird_case(str)
  str_spl = str.split(" ")
  str_spl
  index = 2
  letter = 1
  solution = []

  loop do
    if str_spl[index].length < 2
    index += 3 

      if str_spl.length < index
        return str
      end

      next
    end

    str_spl[index][letter] =  str_spl[index][letter].upcase!
    letter += 2
    if letter >= str_spl[index].length
      index += 3
      letter = 1
    end

    break if index >= str_spl.length
  end
   str_spl.join(" ")
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'