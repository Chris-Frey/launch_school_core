
puts "enter any year"
input = gets.chomp.to_i

def calcs(year)
  num1 = []
  num1 = year.ceil(-2) / 100
  num1.to_s.split(//)
end

suffix = calcs(input)
def century(u_num)
  if u_num.first.to_i > 1 && u_num.last.to_i == 1
    u_num.join.to_s + "st"
  elsif u_num.join.to_i == 11
    u_num.join.to_s + "th" 
  elsif u_num.join.to_i.between?(04, 19)
    u_num.join.to_s + "th"
  elsif u_num.last.to_i == 0
          u_num.join.to_s + "th"
  elsif u_num.last.to_i == 1
          u_num.join.to_s+ "st"
  elsif u_num.last.to_i == 2
          u_num.join.to_s + "nd"
  elsif u_num.last.to_i == 3
          u_num.join.to_s + "rd"

    else 'NA'
  end
end

p century(suffix)





# when a number is multiplied by 100
#   number is then rounded up (use .ceil)


# a - get the number to divide by 100 and round up
# b- take 'a' and apply the suffix
# ??? here's your answer

# 01 st
# 21 st
# last 2 in an array. if first ==0 then run normally, 
# if !=0, then run secondary 