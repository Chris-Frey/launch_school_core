
def running_total(arg)
  # pos == 0
    p arg.map {|x| x + x[x.index(1).pred] }

  
end


p running_total([2, 5, 13]) #== [2, 7, 20]





# iterate over original array
# create new array
# add numbers up to current index
# so index 1 =+ index 0, index 2 += index 1, etc
# so iterate, and add the current index to the last number iterated