=begin 
SOLVED IN 1 HOUR
21. Find the Mine!
(https://www.codewars.com/kata/528d9adf0e03778b9e00067e/train/ruby)
6 kyu

You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.
Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.
The location returned should be an array where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.
=end

=begin 
Goal: return the coordinates of the min location in array form 

input: series of arrays 
output: array of row/column coordinates

rules: arrays will always be square 
arrays vary in size
only 1 bomb
row coordinate is furst return, the columnn coordinate is the second return

data structures: 
arrays 

Algorithm
take in 1 array 
create empty solution array
iterate through main Array  
  check each sub-array if any? of the elements are the number 1
  if that returns true 
    store the index inside the sub-array, of the 1
    store the index of the sub-array 

return both coordinates in an array
=end 

def mineLocation(arrays)
  solution = ''
  
  arrays.select.with_index do |sub_array, idx|
    if sub_array.include?(1)
      solution = [idx, sub_array.index(1)]
    end
  end
  solution
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]