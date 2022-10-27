=begin
https://launchschool.com/exercises/1d04b607


A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.
=end

=begin
*************PROBLEM***************************
*coding goal: identify triangle type (acute/obtuse/right/invalid) and set the answer as a symbol

*initial input: 3 integers

*overall output: symbol named for type of triangle or invallid

*explicit requirements: all values are integers
arguments are specified in degrees
all integers greater than zero
invalid if numbers don't all add up to 180

*implicit requirements:
all integers are positive
 
*questions:
 
*************EXAMPLES AND TEST CASES************

*restate all test cases given (or write out an example for clarity)
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

*add edge cases, 0 and empty:

*************DATA STRUCTURE*********************

**any patterns from test cases, or 
  notable data structure? what kind can i use:

**************SCRATCH PAD***********************
-
************ALGORITHM***************************

A. Main Method (high-level | What is my overarching process)
  1. define a 'triange' Method
      evaluate each argument 
        if any have 90 degrees AND add up to 180 = :right
        if any have 0 degrees = :invalid
        if all add up to 180 AND one argument > 90 = :obtuse
        if all add up to 180 AND all arguments < 90 = :acute
  return symbol
=end

def triangle(arg1, arg2, arg3)
  arr = [arg1, arg2, arg3]
  sum = arg1 + arg2 + arg3
  non_zeros = arr.none?(0) # returns true if there are no zeros 
  ninety = arr.any?(90)


  if (ninety) && (non_zeros == true) && (sum == 180)
     return :right
  elsif
    (arg1 < 90 && arg2 < 90 && arg3 < 90) && (sum == 180) && (non_zeros == true)
    return :acute
  elsif   
    (arg1 > 90 || arg2 > 90 || arg3 > 90) && (sum == 180) && (non_zeros == true)
    return :obtuse
  else
    return :invalid
  end
end


# test cases 
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid