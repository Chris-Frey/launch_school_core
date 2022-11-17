def swap(str)
 spl =  str.split
  spl.map do |ele|
    ele[ele.length - 1] = ele[0]
    ele[0] = ele[ele.length - 1]
    # end
  end
p th
end

p swap('Abcde') #== 'ebcdA'
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# take a string
# separate string into words by space (array)
# separate into hashes
# pop and store
# shift and store
# unshift popped variable
# append unshifted variable
# flatten arrays

