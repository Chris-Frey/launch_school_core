def staggered_case(str)
  index = 0
  up_down = 0
  new_str = ''
  loop do

    if index == 0
      new_str << str[index].upcase
      index += 1
      up_down += 1
    elsif str[index] == " " || str[index].to_i.to_s == str[index]
      new_str << str[index]
      index += 1    
    elsif up_down.even?
      # p str[index].downcase
      new_str << str[index].upcase
      index += 1
      up_down += 1
    elsif up_down.odd?
      new_str << str[index].downcase
      index += 1
      up_down += 1
    else
      new_str << str[index]
    end
  #  p new_str
    break if index == str.size 
    # index += 1
  end
  new_str
end



p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'