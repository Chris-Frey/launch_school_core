=begin
switch the last 2 numbers and see 
if the are bigger than the original number. if not, then 
  include the 3rd number from the end in the formula.
  then do 4th if needed, etc. basically array length - 1

    store value of original number
    put numbers into an array
    change last two digits and check to see if greater than 
    original number. (put into temporary variables to switch)
      if not greater, go to 3 digits etc....
        stop iteration at length of array - 1
        if no greater number is found, then return "-1"

=end

def nex_bigger_num(num)
  temp_a = ''
  temp_b = ''
  og_num = num.to_s.split(//)
  times_run = 0

  # loop do 
    og_num.map! {|n| n.to_i}
    if num 
    # p og_num
    temp_a = og_num[-1]
    # p num[-1]
    temp_b = og_num[-2]

    og_num[-2] = temp_a
    og_num[-1] = temp_b
  p og_num
  # end
end


#test cases
# nex_bigger_num(9) == -1
nex_bigger_num(12) == 21
513 == 531
2017 == 2071
111 == -1
531 == -1
123456789 == 123456798