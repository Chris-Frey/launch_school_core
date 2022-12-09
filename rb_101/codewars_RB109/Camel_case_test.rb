# Complete the solution so that the function will break up camel casing, using a space between words.

def solution(string)
  arr = []
  string.each_char do |x|
    if x.upcase == true
    puts arr << x
    else 
      p "no"
      # string.insert(string.index(x), " ")
    end
  end
end






p solution('camelCasing')#, 'camel Casing')
# p solution('camelCasingTest')#, 'camel Casing Test')