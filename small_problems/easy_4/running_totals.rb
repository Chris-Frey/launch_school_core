
def running_total(arr)
  # pos == 0
    p arr.map do |x| 
      x + x.index(x - 1)
    end

  
end


p running_total([2, 5, 13]) #== [2, 7, 20]





# iterate over original array
# create new array
# add numbers up to current index
# so index 1 =+ index 0, index 2 += index 1, etc
# so iterate, and add the current index to the last number iterated