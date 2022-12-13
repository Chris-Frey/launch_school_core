=begin 
TOOK 15 MINUTES TO SOLVE
Complete the method scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

    Only lower case letters will be used (a-z). No punctuation or digits will be included.
    Performance needs to be considered.
 

Examples
scramble('rkqodlw', 'world') ==> True
scramble('cedewaraaossoqqyt', 'codewars') ==> True
scramble('katas', 'steak') ==> False
=end

=begin 
Goal: check to see if you can make the second input from the letters of the first. if not, return false. 
input: 2 string inputs
output: boolean true or false 

rules
all lowercase
no numbers
no characters
make it fast

data structures
strings
arrays?

Alogorithm
intake input 1*
check if all the letters in input 2 exist in input 1
  call each_char on the second string as an iteration
  use the include method to ensure all input 2 letters are in input 1
return true if all are included
else false
=end 

def scramble(input1, input2)
  input2.each_char do |letter|
    if !input1.include?(letter) #== false
      return false
    end
  end
  true
end


#test cases
p scramble('rkqodlw',           'world'     )
p scramble('cedewaraaossoqqyt', 'codewars'  )
p scramble('katas',             'steak'     )
p scramble('scriptjava',        'javascript')
p scramble('scriptingjava',     'javascript')

