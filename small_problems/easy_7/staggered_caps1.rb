def staggered_case(str)
  index = 0
  new_str = ''
  loop do

    case
    when index == 0
      new_str << str[index].upcase
    when index == " "
      new_str << " "
      index += 1
    when index.odd?
      new_str << str[index].downcase
    when index.even?
      new_str << str[index].upcase
    end
  #  p new_str
    break if index == str.size - 1
    index += 1
  end
  new_str
end



   

#   end
#   p new_str
# end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'