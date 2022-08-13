def real_palindrome?(arg)
  solution = []
arr = arg.downcase.split(//).reverse
if arr.each >= "a" && arr.each <= "z"
  solution << arr.each
  solution
end
end



real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false