=begin 
goal: find out which lights are switched off after N number
of passes on the chain of lights

input: n repetitions
output: array of light positions that are left on

example:
5 digits
L   L   L   L   L   L   L   L   L   L   L   L   L   L   L
on off  on off  on off  n off  on  off on off  on off  on
on off off off on  on  on  off off on  on  on  on off  off
on off off on  on  on  on  on off  on  on  off on off  off


on will represent on
off will represent off

if n == 1 then all lights are on
if n > 1
-  switch variable - start with 2, and increment by self
    increment += 1 every round
-  put the initial results in an array (all 'on') matching
  the length of n.
-  set an index to 0 and this will say which light is altered
    for every go
-  if the index == the switch value, then index is changed to 
    opposite value
-return the index of the index positions that are on after the
rounds are done
=end

def ligh_switch(num)
  switch_arr = (1..num).to_a
  index = 0
  switch_var = 2

  if num <= 1
    return [1]
  end

  switch_arr.map! do |x|
    x = "on"
  end
  # p switch_arr

  loop do
    if index % switch_var == 0
      if switch_arr[index] == "on"
        switch_arr[index] = "off"
      elsif
        switch_arr[index] == "off"
        switch_arr[index] = "on"
      end
    end

    index += 1
    switch_var += 1
    break if index == num
  end
  p switch_arr


end

p ligh_switch(4)