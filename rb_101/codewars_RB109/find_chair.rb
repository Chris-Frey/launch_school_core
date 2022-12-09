def clean_string(str)
  letters_arr = str.chars
index = 0
# p str

  str.each_char do |let|
      if let[index] == '#'
      p  str.delete(let[index - 1])
      index += 1
        # letters_arr.delete_at(idx - 1)
      end
    end
    # p str
end


p clean_string('abc#d##c')