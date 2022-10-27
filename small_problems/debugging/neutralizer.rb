def neutralize(sentence)
  words = sentence.split(' ')
  words.length.times do
    words.each do |word|
      words.delete(word) if negative?(word)
    end
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.