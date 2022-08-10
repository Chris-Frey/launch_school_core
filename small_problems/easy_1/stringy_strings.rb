def stringy(num)
  count = 0
  arr = []
  loop do
  
    arr << 1
    count += 1
    break if count == num
    arr << 0
    count += 1
    break if count == num
  end
  arr.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'