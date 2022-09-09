# 1. Initialize deck **
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# What I need:
# deck of cards
# card points
# player hand
# dealer hand
# store cards in the hands
# draw method
# show only 1 card publicly
# method on whether to hit or stay for dealer
# method to show the current cards on table



player_hand = []
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

def card_points
  point_values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]

end
# p card_points

def draw
  card = {}
  card_suit = deck.keys.sample
  card_value = deck[card_suit]
  card.store(card_suit, card_value.sample)
  card
end
# p draw


p player_hand << draw


# def show_player_hand
#   p "your hand is currently:
#   #{p_hand}
#   Worth #{p_points} points"
# end

# def show_dealer_hand
#   p "The dealer has a #{card} of #{suit} visible, worth #{d_points} points."
# end

# def player_turn
#   loop do
#     p "Would you like to hit, or stay? 1 for hit, 2 for stay."
#     choice = gets.chomp.to_i
#     if choice == 2
#         return 2
#       break
#     elsif choice == 1
#       p_hand << player_draw
#         return 1
#       break
#     else
#       p "Please follow directions"
#     end
#   end
# end

# def dealer_turn
#     if d_hand < 17
#       d_hand << d_draw
#     end
# end

# def check_for_21
#   if p_hand == 21 || d_hand > 21
#     return 'player'
#   elsif d_hand == 21 || p_hand > 21
#     return 'dealer'
#   end
# end


# loop do #game loop
#   show_player_hand
#   show_dealer_hand

#   player_turn
#   if check_for_21
#     break
#   end

#   show_player_hand
#   show_dealer_hand

#   dealer_turn
#   if check_for_21
#     break
#   end

#  p "x won!
#   play again? (y/n)"
#   again? = gets.chomp
#   break unless again? == 'y'
# end


