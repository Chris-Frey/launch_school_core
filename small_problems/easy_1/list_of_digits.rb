def digit_list(num)
p num.to_s.chars.map {|x| x.to_i}
end
digit_list(2345234)