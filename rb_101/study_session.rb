# *************Problem***************************

# *initial input: string

# *overall output: string (transformed). mutating string

# *explicit requirements:
# swap the character case (low to cp / caps to low)
# reverse order of words
# will include leading and trailing spaces, and mult. spaces
# *implicit requirements:
 
# *questions:
 
# *************Examples and Test cases************

# *restate all test cases given

# *add edge cases, 0 and empty:

# *************Data Structure*********************

# **any patterns from test cases, or 
# 	notable data structure?:
# use array to preserve spacing order
# ************Algorithm***************************

# A. Main Method (high-level | What is my overarching process)
# 	1. put strings into an array divided by words/spaces.
#     reverse word order
#     .swapcase



# B. sub-methods (code steps in words)
# 	1.

def string_transformer(string)
string.swapcase.split(//).reverse!.join

end


p string_transformer(' Hello  Sir bye') #== 'BYE sIR  hELLO