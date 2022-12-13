def minimum_sum(arr)
  temp_array = []
  index = -1
  
  (arr.map do |num|
    return nil if arr.size < 5
    index += 1
    temp_array <<  arr[index..index + 4].sum
    break if index == arr.length - 5
  end)
  temp_array.min 
end


#OR

def minimum_sum(arr)
  temp_array = 0
  index = 0
  low = 0
  high = 4

  loop do 
    if arr.length < 5
      return nil 
    end

    if index == 0
      temp_array = arr[low..high].sum
      index += 1
      next
    end

    if arr[low..high].sum < temp_array
    temp_array = arr[low..high].sum
    end

    low += 1
    high += 1
    break if high == arr.length - 1
  end
  temp_array
end




# p minimum_sum([1, 2, 3, 4]) #== nil
p minimum_sum([1, 2, 3, 4, 5, 6])# == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10