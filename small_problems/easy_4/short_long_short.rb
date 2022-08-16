def short_long_short(arg1, arg2)
  answer_t = []
if arg1.length < arg2.length
   answer_t  += [arg1, arg2, arg1]
   answer_t.join.to_s
else
  answer_t  += [arg2, arg1, arg2]
  answer_t.join.to_s
end
end

p short_long_short('abc', 'defgh') 
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')