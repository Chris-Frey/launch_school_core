def expanded_form(input)
  index = 0
  nums = input.to_s.reverse!
  arr = []

  loop do 
    if nums[index].to_i == 0
      index += 1
      next
    elsif nums[index].to_i > 0
      arr << nums[index] + ("0" * index)
      index +=1
    end

    break if index == nums.length 
  end
 arr.reverse! 
arr.join(" + ")
end









p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'