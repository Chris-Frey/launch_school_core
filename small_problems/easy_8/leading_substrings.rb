def leading_substrings(str)
  letters = ''
  full_arr = []

  init_array = str.split(//)
  init_array.map do |string|
    full_arr << letters += string
  end
  p full_arr
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']