def before_midnight(time)
  clock_h = (time.split(':').at(0).to_i)
  clock_m = (time.split(':').at(1).to_i)

  if clock_h * 60 - clock_m == 1440
   then 0  
  else
    (clock_h * 60) - clock_m
  end
end


def after_midnight(time)
  clock_h = (time.split(':').at(0).to_i)
  clock_m = (time.split(':').at(1).to_i)
  
  if clock_h * 60 + clock_m == 1440
    then 0  
  else
     (clock_h * 60) + clock_m
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


# hour * 60, minus minutes = before midnight 
# hour *60 plus minutes = after midnight 