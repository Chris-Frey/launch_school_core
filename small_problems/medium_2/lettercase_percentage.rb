def letter_percentages(string)
total_chars = string.size
lowercase = []
string_array = string.chars
  string_array.each do |x|
    if  x.downcase == x
    lowercase << x
    end
  end
  p lowercase

end


letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }