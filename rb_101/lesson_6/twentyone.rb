# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def deck
  suits = ["hearts", "spades", "diamonds", "clubs"]
  cards = ["Jack", "King", "Queen", "Ace"], (1..9).to_a
  full_deck = {}
  suits.each do |suit|
    full_deck.store(suit.to_sym, cards )
  end
  full_deck
end
# p deck


def draw
card_suit = deck.keys.sample
card_value = deck[key].sample
# "#{card_value} of #{card_suit}"
p card_suit
p card_value
end
p draw

