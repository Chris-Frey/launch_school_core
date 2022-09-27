def staggered_case(str)
  index = 0
  new_str = ''
  loop do

    case
    # when index == 0
    #   new_str.concat(str[index])
    when index.odd? == true
      new_str.concat(str[index])
    # when index.even? == true
    #   new_str.concat(str[index])
    break if index == new_str.size
    index += 1
    end

   

  end
  p new_str
end



 staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'