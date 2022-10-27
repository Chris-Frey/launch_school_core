def f(string)
  #number = []
  index = 0
  # counter = 0
  output = []
  index2 = 0
  

  arr = string.split(//)
  number = arr.each_with_object([]) do |el, num|
    num << arr.count(arr[index])
    index += 1
  end

  arr.each do |x|
    if arr.count(arr[index2]) == number.max
      output << arr[index2]
    end
    index2 += 1
  end
  [output.uniq.join, number.max]
end

p f("ababab") #== ["ab", 3]
p f("abcde") #== ["abcde", 1]