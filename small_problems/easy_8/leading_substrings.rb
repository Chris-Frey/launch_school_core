def sum_of_sums(arr)
  index = 0
  size = arr.length
  spot = size * -1
  full_arr = []

    loop do
      break if index == arr.length

      full_arr << arr[0..spot]
      spot += 1
      index += 1

    end
  p full_arr.flatten.sum
end


leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']