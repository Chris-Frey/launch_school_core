def real_palindrome?(arg)
  str1 = []
  # str2 = []

 str1 = arg.downcase.gsub(/[^0-9A-Za-z]/, '')
 str2 = str1.split(//).reverse.join.to_s
str2 == str1
end



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false