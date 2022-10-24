arr = [[1], [2], [3]]
arr.map do |num|
  num[0] = 0
end
p arr