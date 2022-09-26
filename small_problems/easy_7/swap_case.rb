def swapcase(str)
  new_str = ''

  str.each_char do |x|
    if x == "-" || x == " "
    p  new_str += x
    elsif  x.downcase == x && ("a-zA-z").include?(x)
   p new_str += x.upcase!
    elsif x.upcase == x
   p new_str += x.downcase!

    end
  end
p  new_str
end










# p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'