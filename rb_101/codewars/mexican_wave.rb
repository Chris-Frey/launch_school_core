def wave(str)
  index = 0
  result = []

  loop do 
    if str[index] == " "
      next
    else 
    p  result << str[index].upcase
      index += 1
    end
    break if index == str.length - 1
  end
p result
end




p wave("hello") #== ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]

# p wave("") == []
# p wave("two words") #== ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]