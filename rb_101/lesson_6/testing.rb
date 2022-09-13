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
##########################

p_hand = []
current_deck = []
def deck
  suits = ["hearts", "spades", "diamonds", "clubs"]
  cards = (2..10).to_a, ["Jack", "King", "Queen", "Ace"] 
  full_deck = {}
  suits.map do |suit|
    full_deck.store(suit.to_sym, cards.flatten )
  end
  full_deck
end
#  p deck

def card_points(hand)
  point_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11, 1]
   hand
  points = point_calculation(hand).map {|x| point_values[x]}
  points.sum
end
# p card_points

def card_index
  index_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
end
# p card_index

def point_calculation(hand)
  cards = hand.map do |x|
    x.map do |k, v|
      v
    end
  end
  cards.flatten!
  cards.map do |card| 
    if card_index.include?(card) 
      then card_index.index(card) 
    end
  end
end


current_deck = []
def game_deck
  current_deck = deck
end
# p game_deck

def draw
  card = {}
  card_suit = game_deck.keys.sample
  card_value = game_deck[card_suit]
  card.store(card_suit, card_value.sample)
  card
end

def player_hand(hand)
  hand << draw
  hand << draw
end
 p player_hand(p_hand)
 p point_calculation(p_hand)
 p card_points(p_hand)