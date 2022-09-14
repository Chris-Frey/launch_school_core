# CLUBS = "\u2663"
# HEARTS = "\u2665"
# DIAMONDS = "\u2666"
# SPADES = "\u2660"
def prompt(message)
  puts("=> #{message}")
end
system 'clear'
prompt("Welcome to the the game of 21!")
sleep 2
prompt("Here are the rules - you'll only see them once so pay attention!:")
sleep 4
prompt("We begin the game with a normal 52-card deck.")
sleep 2.5
prompt("Try to get as close to 21 as possible!")
sleep 2.5
prompt("You start with one card face up,
  and one card face down that the dealer cannot see.")
sleep 4
prompt("The dealer starts with one card face up,
  and one card face down that you cannot see.")
sleep 4
prompt("You will go first.")
sleep 2
prompt("You may 'hit', or 'stay' after each card.
  Once you stay, your turn is over and the dealer goes.")
sleep 4.5
prompt("Highest score without going 'bust' (over 21 points) wins!")
sleep 2
prompt("Scoring:")
sleep 3
prompt("  cards 2 - 10 are scored at face value.")
sleep 3
prompt("  Royal cards are all scored at 10 each.")
sleep 3
prompt("  Aces are worth 11, but reduced to 1 if it would put you over 21.")
sleep 4
prompt("Press 'Enter' when ready!")
gets.chomp

loop do
  p_hand = []
  d_hand = []

  def deck # creates a hash with arrays of hash values
    suits = ["\u2665", "\u2660", "\u2666", "\u2663"]
    cards = (2..10).to_a, ["Jack", "King", "Queen", "Ace"]
    full_deck = {}
    suits.each do |suit|
      full_deck.store(suit, cards.flatten)
    end
    full_deck
  end

  def card_points(hand)
    point_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11, 1]
    points = point_calculation(hand).map { |x| point_values[x] }
    points.sum
    if points.include?(11) && points.sum > 21
      points.sum - 10
    else points.sum
    end
  end

  def point_calculation(hand)
    index_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    cards = hand.map do |x|
      x.map do |_, v|
        v
      end
    end
    cards.flatten!
    cards.map do |card|
      if index_values.include?(card)
        then index_values.index(card)
      end
    end
  end

  def game_deck
    current_deck = deck.dup
  end

  def draw
    card = {}
    card_suit = game_deck.keys.sample
    card_value = game_deck[card_suit]
    card.store(card_suit, card_value.sample)
    card
  end

  def player_draw(hand)
    if hand.include?(draw)
      draw
    else
      hand << draw
    end
  end

  def dealer_draw(hand)
    if hand.include?(draw)
      draw
    else
      hand << draw
    end
  end

  def show_player_hand(hand)
    suit = hand.map(&:keys).flatten
    number = hand.map(&:values).flatten
    puts "Your hand, worth #{card_points(hand)} points, is:"
    sleep 0.5
    counter = 0
    loop do
      puts "#{suit[counter]}#{number[counter]}"
      break if counter == hand.length
      counter += 1
    end
  end

  def show_dealer_hand(hand)
    suit = hand.map(&:keys).flatten
    number = hand.map(&:values).flatten
    puts "Dealer's hand, worth #{card_points(hand)} points, is:"
    sleep 0.5
    counter = 0
    loop do
      puts "#{suit[counter]}#{number[counter]}"
      break if counter == hand.length
      counter += 1
    end
  end

  def player_turn(hand)
    loop do
      show_player_hand(hand)
      sleep 2
      break if check_for_21(hand)
      break if check_for_bust(hand)
      prompt("Would you like to hit, or stay? 1 for hit, 2 for stay.")
      choice = gets.chomp.to_i
      if choice == 2
        puts "You choose to stay with #{card_points(hand)} points."
        sleep 2
        system 'clear'
        return 2
      elsif choice == 1
        system 'clear'
        sleep 0.25
        player_draw(hand)
      else
        prompt("Please follow directions...")
        sleep 0.5
      end
    end
  end

  def dealer_turn(hand)
    loop do
      show_dealer_hand(hand)
      sleep 2
      break if check_for_21(hand)
      break if check_for_bust(hand)
      if card_points(hand) > 17
        puts "Dealer holds at #{card_points(hand)} points."
        sleep 4
        break
      else
        prompt("Dealer hits")
        dealer_draw(hand)
      end
    end
  end

  def check_for_bust(hand)
    if card_points(hand) > 21
      system 'clear'
      true
    end
  end

  def check_for_21(hand)
    if card_points(hand) == 21
      prompt("We have a winner!")
      true
    end
  end

  # MAIN GAME FLOW
  system 'clear'
  player_draw(p_hand)
  player_draw(p_hand)
  dealer_draw(d_hand)
  show_dealer_hand(d_hand)
  sleep 1
  dealer_draw(d_hand)
  sleep 1

  if player_turn(p_hand) == 2
    dealer_turn(d_hand)

    prompt("Player has #{card_points(p_hand)} and
    Dealer had #{card_points(d_hand)}")

    if card_points(d_hand) == card_points(p_hand)
      prompt("It's a tie!")

    elsif card_points(d_hand) > card_points(p_hand) && card_points(d_hand) < 22
      prompt("Dealer won!")

    else prompt("Player won!")
    end

    prompt("Again? y/n")
    input = gets.chomp
    if input == 'y'.downcase
      prompt("Here we go!")
      sleep 1
    else
      prompt("thanks for playing!")
      break
    end

  elsif check_for_bust(p_hand) == true
    prompt("Oh no, bust!! Try again? y/n")
    answer = gets.chomp
    if answer != 'y'.downcase
      puts "I'll be here when you return.
      Age is of no importance unless you're a cheese."
      break
    end

  elsif check_for_21(p_hand) == true
    prompt("Nice job! did you learn from James Bond?! Again? y/n")
    answer = gets.chomp
    if answer != 'y'.downcase
      puts "Quitting while you're ahead. Good move!"
      break
    end
  end
end
