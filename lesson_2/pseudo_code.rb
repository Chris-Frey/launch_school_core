
# Casual pseudo-code
# A method that returns the sum of two integers
#   ask for first integers
#   get user input
#   ask for second integer
#   add integers together
#   print the sum

# Formal pseudo-Code
# A method that returns the sum of two integers
  # START - start the program
  # GET - retrieve integer input from user
  # SAVE - input to variable 1
  # GET for - retrieve second integer input from user
  # SAVE - input to variable 2
  # ADD - variable 1 and variable 2 together
  # PRINT result


# Casual pseudo-code
# A method that takes an array of strings, and returns a string that is all those strings concatenated together
  # take each string and use a concatenation method remove the dividing marks between them (the commas, most likely)
  # print the new string

# Formal pseudo-code
# A method that takes an array of strings, and returns a string that is all those strings concatenated together
  # GET - get string input
  # CONCATENATE - remove dividers between strings so they become 1 full string object in the array
  # PRINT - show the new string


# Casual pseudo-code
# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element
  # get the orriginal array
  # iterate through the array asking if each POSITION is odd or even
  # return the even position numbers into a new array

# Formal pseudo-code
# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element
  # GET - original array
  # ITERATE - through the array
  # IF ELSE - if integer position is 'even', put into new array, or else skip it
  # END - of program


# Casual pseudo-code
# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil. 
  # get the array input
  # get the "given character" (x) that we're trying to count
  # iterate over the strings
  # count the number of each character that is given (x)
  # when instance count is equal to 3, return position number
  # if count does not reach 3 for any character, return nil

# Formal pseudo-code
# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil. 
  # GET - original array
  # GET - string character to count
  # ITERATE - look at each character in the string
  # COUNT - count the instances of the chosen character
  # IF/THEN - if the count of the character reaches 3, return the location number of the 3rd character in the string
  # ELSE -  return nil


# Casual pseudo-code
# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.
  # get input from arrays
  # merge arrays together with first array being even position numbers, and second array being odd position numbers in the new array

# Formal pseudo-code
# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.
  # GET - get the original arrays
  # CREATE - create new blank array
  # TRANSFER - pull numbers from first array 
  # PLACE - put numbers from first array into new array
  # PLACE - put numbers from second array into specific position numbers (odd) in new array