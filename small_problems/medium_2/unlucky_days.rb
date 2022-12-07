require 'date'

def friday_13th(input)
  month = 1
  counter = 0

  loop do
    if Date.new(input, month, 13).friday? == true
    counter += 1
    end

    month += 1
    break if month == 13
  end
  # p counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


# Kim's version:
# require 'date'

# def friday_13th(year)
#   array = []
  
#   (1..12).each do |month|
#     if Date.new(year, month, 13).friday?
#       array << month
#     end
#   end

#   array.count
# end