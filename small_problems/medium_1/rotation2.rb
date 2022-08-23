def rotate_array(arr)
  first_num = arr.shift
  arr.append(first_num)
  end

def rotate_rightmost_digits(arg, ind)
p arg.rotate_array #{|num, t| num(t).rotate_array}
end

  rotate_rightmost_digits(735291, 2) == 735219