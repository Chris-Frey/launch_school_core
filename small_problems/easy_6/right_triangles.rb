def triangle(num)
  counter = 1
  spaces = num - 1

  loop do
    num.times do |x|
     puts (" " * spaces) + ("*" * counter)
     counter += 1
     spaces -= 1
    end
    break
  end

end


triangle(6)
triangle(9)