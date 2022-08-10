def reverse_words(words)

  words.split.each do |word|
    if word.length >= 5
     word.reverse!.class
    end
  end
end 

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcSs