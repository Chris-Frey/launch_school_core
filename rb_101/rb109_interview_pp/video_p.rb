def longest_palindrome(str)
  index = 1
  start_point = 0
  counter = 1
  new_arr = []
  new_str = str

  if str == str.reverse
    return str.length
   end

  loop do
      new_str[start_point..index]
    loop do
      if new_str[start_point..index] == new_str[start_point..index].reverse
        new_arr << new_str[start_point..index]
        index += 1
      else index += 1
        break if index == new_str.length
      end
    end
    
      start_point += 1
      index = start_point + 1
    
    break if start_point == new_str.length - 1
  end
p new_arr.max
end





# p longest_palindrome("a") == 1
# p longest_palindrome("aaab") == 3
# p longest_palindrome("aab") == 2
p longest_palindrome("asdfkeofoelkja") == 5