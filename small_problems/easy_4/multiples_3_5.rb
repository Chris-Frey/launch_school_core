def multisum(num)
range = []
num.downto(1) {|x| range << x if x % 3 == 0 || x % 5 == 0}
p range.sum    
  end
# end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168