def substrings(str)
  letters = ''
  full_arr = []
  counter = 0
  init_array = str.split(//)

    loop do
      init_array[counter..str.size].map do |string|
        full_arr << letters += string
      end
      counter += 1
      break if counter == init_array.length
      letters = ''
    end
  full_arr
end


def palindromes(str)
  pali_arr = []
  substrings(str).select do |x|
    if x.reverse == x && x.size >= 2
    pali_arr << x
    end
  end
   pali_arr
end





p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]



=begin
*************Problem***************************
*CODING GOAL: return all palindromes of give string, to an array

*INITIAL INPUT: string

*OVERALL OUTPUT: array of all palindromes from string

*EXPLICIT REQUIREMENTS: 
-case sensative
-special characters count

*implicit requirements:
-spaces count

*questions:
-do spaces count?
*************Examples and Test cases************

*restate all test cases given (or write out an example for clarity)
palindromes('madam') == ['madam', 'ada']

*add edge cases, 0 and empty:
-no palindromes

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
	notable data structure? what kind can i use:

**************SCRATCH PAD***********************
- do a reverse comparison "ma.reverse == true?"
  it's going to run a(compare), ab(compare), abc(compare) etc
************Algorithm***************************

A. Main Method (high-level | What is my overarching process)
	1.  define palindromes method
    take string as argument
    call substring method
      iterates over string and produces stacking array values
    (adjust method to look for reversable groups of words e.g. do a
      'reverse' compare every time it itterates) maybe use select?
      [each reset will move the first letter forward 1 index. 
    most values will not be returned]


B. sub-methods (code steps in words)
	1.
=end