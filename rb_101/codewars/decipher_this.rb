=begin https://www.codewars.com/kata/581e014b55f2c52bb00000f8
Decipher this!
You are given a secret message you need to decipher. Here are the things you need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special characters used, only letters and spaces
=end

=begin
goal: decipher the coded messages

input: string of letters and numbers
output: string of letters

rules: first letter is replaced with its character code (chr?)
second and last letters are switched

-no special characters
-no spaces

examples 
decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

data structures
-string
-array

algorithm
-split the string and split by character
- iterate over string and put consecutive numbers into a new array
  - call .chr on the number in the array
  - push new letter to new array
-if not a number, push letter to the new array
-swap the second and last letters
-join

=end

def decipher_this(str)
  spl_str = str.split(/([[:digit:]]+)/)
#  p spl_str
  spl_str.map! do |char|
    if char.class == Integer
    p  char.chr
    # else
    #   next
    end
    p spl_str
  end
  spl_str.map! do |elem|
    if elem.class == String && elem.length > 1
      elem[0], elem[-1] = elem[-1], elem[0]
    else
      next
    end
  end
  
 spl_str.join("")
end



p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
