def joinor(arr, pun = ", ", word = "or")
if arr.length < 3
  arr.join(" ").insert(-2, word + " ")
else
  arr.join(pun).insert(-2, word + " ")
end
end


p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"