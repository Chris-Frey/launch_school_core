DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each do 
    |digit| value = 10 * value + digit 
    
  end
  value
end

def string_to_signed_integer(string)
  if string[0] == "-"
    string.delete_prefix!("-")
  string_to_integer(string) * -1
  elsif string[0] == "+"
    string.delete_prefix!("+")
    string_to_integer(string)

  else
    string_to_integer(string)
  end
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100