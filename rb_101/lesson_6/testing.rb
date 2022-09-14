
# CLUBS = "\u2663"
# HEARTS = "\u2665"
# DIAMONDS = "\u2666"
# SPADES = "\u2660"
def prompt(message)
  puts("=> #{message}")
end
system 'clear'
# prompt("Welcome to the the game of 21!")
# sleep 2
# prompt("Here are the rules - you'll only see them once so pay attention!:")
# sleep 4
# prompt("We begin the game with a normal 52-card deck.")
# sleep 2.5
# prompt("Try to get as close to 21 as possible!")
# sleep 2.5
# prompt("You start with one card face up, and one card face down that the dealer cannot see.")
# sleep 4
# prompt("The dealer starts with one card face up, and one card face down that you cannot see.")
# sleep 4
# prompt("You will go first.")
# sleep 2
# prompt("You may 'hit', or 'stay' after each card. Once you stay, your turn is over and the dealer goes.")
# sleep 4.5
# prompt("Highest score without going 'bust' (over 21 points) wins!")
# sleep 2
# prompt("Scoring:")
# sleep 3
# prompt("  cards 2 - 10 are scored at face value")
# sleep 3
# prompt("  Royal cards are all scored at 10 each")
# sleep 3
# prompt("  Aces are worth either 1 or 11, your choice depending on the situation")
# sleep 4
prompt("Enter any key when ready!")
start = gets.chomp

loop do
p_hand = []
d_hand = []
current_deck = []

def deck #creates a hash with arrays of hash values
  suits = ["\u2665", "\u2660", "\u2666", "\u2663"]
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
  if points.include?(11) && points.sum > 21
    return points.sum - 11
  end

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
end