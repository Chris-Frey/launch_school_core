def word_cap(str)
  new_arr = []
   separate = str.split(/ /, -1)
  separate.map do |x|
    new_arr << x.capitalize
  end
  new_arr.join(" ")
end








p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'