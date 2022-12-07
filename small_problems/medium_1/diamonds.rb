=begin
 Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
=end

=begin
goal: make a star of n x n size. 
rules: 
-n will always be odd
- must be centered
-graphic will be squared (nxn)

Example:
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

    Data: strings
Algorithm
create a "*" variable

center 1 start with center(n)
if n.odd? divide by 2 and add 1, if even, divide by 2.
each line x + 2 until you reach the middle number, then x - 2
execute 'n' times, 

puts the answer
=end

def diamond(num)
  star = "*"
  mult = 1
  counter = 1
  flip = 0
  
  loop do
    puts (star * mult).center(num) 

    if counter <=  num / 2 && flip == 0
      counter += 1
      mult += 2
    elsif counter > num / 2
      counter -= 1
      mult -= 2
      flip = 1
    else
      counter -= 1
      mult -= 2
    end
    break if counter == 0
  end
end


# diamond(12)

def diamond(num)
  star = "*"
  mult = 1
  counter = 1
  flip = 0
  
  loop do
    if counter > 1
      puts (star + (" " * mult) + star).center(num + 2) 
    else
      puts (star * mult).center(num + 2) 
    end

    if counter <=  num / 2 && flip == 0
      counter += 1
      mult += 2
    elsif counter > num / 2
      counter -= 1
      mult -= 2
      flip = 1
    else
      counter -= 1
      mult -= 2
    end
    break if counter == 0
  end
end

diamond(9)