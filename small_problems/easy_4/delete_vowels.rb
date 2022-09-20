
# *************Problem***************************

# initial input: array of strings

# overall output: array of strings without vowels

# explicit requirements:
# remove the vowels a, e, i, o, u

# implicit requirements:
#  likely a new array

# questions:
 

# *************Examples and Test cases************

# ++restate all test cases given
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# ++add edge cases, 0 and empty:

# *************Data Structure*********************

# ++the steps the data takes in between input 
# 	and output listed above
#   - string passed to array for iteration, then back to string

# ************Algorithm***************************

# A. Main Method

# 1. split string inside array and assign it to new variable
# 2. iterate over new array with reject! to reject vowels.downcase
# 3. put letters back together join?
# 3. profit


def remove_vowels(array)
array.map {|x| x.delete "aeiouAEIOU"}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']