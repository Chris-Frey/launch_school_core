=begin 
A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

=end 

=begin 
goal: determin whether a triange is equilateral, isosceles, scalene, or invalid and return a symbol stating the same.

input: numbers representing side length
output: a Symbol

Rules:
all sides must be greater than 0
2 shorter sides must add up to more than the longer side

Data structure:
numbers
array?
return a Symbol

Algorithm
take 3 elements as arguments in a definition
assign each number to a variable (side_1, side_2, side_3)
sort the 3 arguments from smallest to largest
  if any side is zero, return :invalid
  if arg[0] + arg[1] < arg[2], return false
create variable for equ/iso/sca  
  equi = a == b == c == true
  iso = if a == b || a == c || b == c == true
  sca = if a != b != c == true (this can be the default else?)

return the answer as symbol
  
=end 

def triangle(a, b, c)
  tri = [a, b, c].sort

  if tri.any?(0)
    return :invalid
  elsif tri[0] + tri[1] < tri[2]
    return :invalid
  elsif tri[1] == tri[2] && tri[1] == tri[0]
    return :equilateral
  elsif tri[0] == tri[1] || tri[0] == tri[2] || tri[1] == tri[2]
    return :isosceles
  else
    return :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid