=begin 
SOLVED IN 19 MIN
13. Kebabize
(https://www.codewars.com/kata/57f8ff867a28db569e000c4a/train/ruby)
6 kyu

Modify the kebabize function so that it converts a camel case string into a kebab case.
kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:
the returned string should only contain lowercase letters
=end

=begin
goal - downcase and separate words with a dash. remove numbers

input: string 
output: altered string 

rules 
remove numbers 
downcase all letters 
dash instead of space between each word

Data structures:
arrays

Algorithm
split by letter 
iterate over each letter. 
if x.to_i.to_s = x
  next
  if downcase, put into empty String with concat
    if upcase, downcase, and put "-" and the downcased letter int othe string 
      return string
    
=end 

def kebabize(str)
  return_string = ''
  splt_str = str.split(//)
  # p splt_str
  splt_str.each do |ele|
    if ele.to_i.to_s == ele
      next 
    elsif ele.downcase == ele 
      return_string.concat(ele)
    elsif ele.upcase == ele
      return_string.concat("-" + ele.downcase)
    else
      next
    end
  end
  p return_string
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'