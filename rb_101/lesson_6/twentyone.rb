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



p_hand = []
d_hand = []
current_deck = []
def prompt(message)
  puts("=> #{message}")
end

def deck #hash with arrays of values
  suits = ["hearts", "spades", "diamonds", "clubs"]
  cards = (2..10).to_a, ["Jack", "King", "Queen", "Ace"] 
  full_deck = {}
  suits.each do |suit|
    full_deck.store(suit, cards.flatten )
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

def game_deck
  current_deck = deck.dup
end
# p game_deck

def draw
  card = {}
  card_suit = game_deck.keys.sample
  card_value = game_deck[card_suit]
  card.store(card_suit, card_value.sample)
  card
end



  def player_draw(hand)  
      if hand.include?(draw)
        then draw
      else
      hand << draw
      end
  end
  # player_draw(p_hand)

  def dealer_draw(hand)
    if hand.include?(draw)
      then draw
    else
    hand << draw
    end
  end
  # dealer_draw(p_hand)

  def show_player_hand(hand)
    suit = hand.map {|x| x.keys}.flatten
    card = hand.map {|x| x.values}.flatten
    hand.map {|x| card + suit}
  puts  "your hand is currently: #{hand}, worth #{card_points(hand)} points"
  end
  # show_player_hand(p_hand)

  def show_dealer_hand(hand)
    suit = hand.map {|x| x.keys}.flatten
    card = hand.map {|x| x.values}.flatten
    hand.map {|x| card + suit}
  prompt("Dealer's hand shows: #{hand[0]}, worth #{card_points(hand)} points")
  end
  # show_player_hand(p_hand)

  # def show_dealer_hand
  #   p "The dealer has a #{card} of #{suit} visible, worth #{d_points} points."
  # end

  
def player_turn(hand)
  loop do
    check_for_21(hand)
    if check_for_bust(hand) == true
      prompt("BUST!")
      break
    end
    prompt("Would you like to hit, or stay? 1 for hit, 2 for stay.")
    choice = gets.chomp.to_i
      if choice == 2
        break

        elsif choice == 1
          player_draw(hand)
          show_player_hand(hand)
                    
        else
          prompt("Please follow directions")
      end
  end
end

def dealer_turn(hand)
  loop do
    check_for_21(hand)
    check_for_bust(hand)
      if card_points(hand) > 17
        prompt("Dealer holds at #{card_points(hand)}.")
        break
      else 
        prompt("Dealer hits")
          dealer_draw(hand)
          show_dealer_hand(hand)
      end
  end
end

def check_for_bust(hand)
  if card_points(hand) > 21
    true
  end
end

def check_for_21(hand)
  if hand == 21
    prompt("We have a winner!")
  end
end

#MAIN GAME FLOW
  player_draw(p_hand)
  player_draw(p_hand)
  show_player_hand(p_hand)
  dealer_draw(d_hand)
  show_dealer_hand(d_hand)
  player_turn(p_hand)

  dealer_turn(d_hand)

  # def who_won?()
  
  # end

#  p "x won!
#   play again? (y/n)"
#   again? = gets.chomp
#   break unless again? == 'y'
# end


