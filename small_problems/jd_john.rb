def splitter(str)
  str.swapcase!
  new_arr = str.split(/ /, -4)
  new_arr.reverse!
  new_arr.join(' ')
end



p splitter(" This Is Great  ")
p splitter(' Hello Sir bye')
p splitter('STRING eXAMPLE')
