# arr = ['yes', 'no', 'maybe']
# answer = ''

# arr.each_with_index {|word, index| answer << word[index]}

# p arr

# def nth_char(array)
#   results = ''
#   array.each_with_index do |word, ind|
#     results << word[ind]
#   end
#   results 
# end
# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

def deck
  suits = ["hearts", "spades", "diamonds", "clubs"]
  cards = (2..10).to_a, ["Jack", "King", "Queen", "Ace"] 
  full_deck = {}
  suits.each do |suit|
    full_deck.store(suit.to_sym, cards.flatten )
  end
  full_deck
end
#  p deck


def draw
  card = {}
  card_suit = deck.keys.sample
  card_value = deck[card_suit]
  card.store(card_suit, card_value.sample)
  card
end
# p draw

player_hand = []
player_hand << draw
player_hand << draw

p player_hand