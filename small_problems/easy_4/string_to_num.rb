def string_to_integer(str)
  nums = {
    1 => "1",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    0 => "0",
  }
  # nums = {
  #   "1" => 1,
  #   "2" => 2,
  #   "3" => 3,
  #   "4" => 4,
  #   "5" => 5,
  #   "6" => 6,
  #   "7" => 7,
  #   "8" => 8,
  #   "9" => 9,
  #   "0" => 0,
  # }
  # new_str = ''

  #  arr = str.split(//)
  # arr.each do |num|
    str.each_char do |num|
    
      p nums.key(num)
      # new_str += nums.values_at(num).
    # end
  # end
  end
#  new_str
end




p string_to_integer('4321') == 4321
p string_to_integer('570') == 570