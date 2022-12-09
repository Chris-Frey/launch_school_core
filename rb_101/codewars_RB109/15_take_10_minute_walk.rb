=begin 
TOOK LESS THAN 15 MINUTES

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).
=end

=begin 
Goal: determin whether cardinal directions given will take me on an exactly 10 minute walk and return to my original location at 10 min. Return true if it does, otherwise false.
input: array of strings (cardinal directions)
output: boolean true/false 

Rules
walk must be exactly 10 min
starting/ending location must be the same
each direction is one block
each block is one minute 
  each direction is one minute

Data structures
strings 
arrays

Scratch Pad:
create counters that add/subtract 1 on each move, and if all counters are zero then return true
Algorithm:
if the array does not have 10 elements, return False

Create a north/south counter
create an east/west counter
Loop? each?
if statement 
    if north, add 1, if south, subtract 1
      if east, add 1, if west, subtract 1
return true if both counters are zero, otherwise false.
=end 

def is_valid_walk(arr)
  counter_NS = 0
  counter_EW = 0
  
  if arr.size != 10
    return false
  end
    arr.each do |ele|
      case (ele)
      when 'n'
        counter_NS += 1
      when 's'
        counter_NS -= 1
      when 'e'
        counter_EW += 1
      when 'w'
        counter_EW -= 1
      end
    end
  if counter_NS == 0 && counter_EW == 0
    return true
  else return false
  end

end


# https://www.codewars.com/kata/54da539698b8a2ad76000228/train/ruby


# test cases 
p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false