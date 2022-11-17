def staggered_case(str)
  index = 0
  new_str = ''
  loop do

    if index == 0
      str[index].upcase
      index += 1
    elsif index == 1
      str[index.downcase]
      index -= 1
    end
  #  p new_str
    break if index == str.size - 1
    index += 1
  end
  new_str
end



p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'