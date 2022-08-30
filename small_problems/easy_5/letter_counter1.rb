def word_sizes(str)
  arr = []
  nums = {}
  counter = 0
  
  loop do
    
    arr = str.split(//)
    nums.store(arr.count[counter]) 
    break if counter == str.length
   counter += 1
    end
  p nums
  end
# end




p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }

# take string
# split string to array
# length of each word