def word_sizes(str)
  arr = []
  nums = {}
  counter = 0
  
  loop do
    
    arr = str.split
    nums.store(arr.count[counter], counter) 
    break if counter == str.length
   counter += 1
    end
  p nums
  end
# end




p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

# take string
# split string to array
# length of each word