def palindromic_number?(arg)
  arr = []
  str = arg.to_s
  arr = str.reverse.split(//)
  arr.join.to_i == arg

end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true