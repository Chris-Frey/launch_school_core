# 1 display empty board ---
# ask player to mark square
# ask computer to mark square
# show updated board
# look for winner
# look for tie
# if neither, go to number 2
# play again?
  # yes
  # no
require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                   [1, 4, 7], [2, 5, 8], [3, 6, 9],
                   [1, 5, 9], [3, 5, 7]]


def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  prompt "Player = #{PLAYER_MARKER} and computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end
board = initialize_board
display_board(board)

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, pun = ", ", word = "or")
  if arr.length == 2
    arr.join(" ").insert(-2, word + " ")
  elsif 
    arr.length == 1
    arr.join()
  else
    arr.join(pun).insert(-2, word + " ")
  end
end

def player_places_piece!(brd)
  square = ''
  arr = empty_squares(brd)
  loop do
    prompt "choose a square (#{joinor(arr)}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "sorry that's not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

# def computer_places_piece!(brd)
 
  # comp_mark = brd[line[2]] == COMPUTER_MARKER

  # case defend
  # when brd[line[0]] == PLAYER_MARKER &&
  #   brd[line[1]] == PLAYER_MARKER
  #     brd[comp_mark]
  # when brd[line[1]] == PLAYER_MARKER &&
  #   brd[line[2]] == PLAYER_MARKER
  # when brd[line[0]] == PLAYER_MARKER &&
  #   brd[line[2]] == PLAYER_MARKER

  # else
  # brd[square] = COMPUTER_MARKER
  # end
# comp_mark = box.select do |num|
#   if num.count == 1
#      answer << num
#   end
# end
# end

def computer_places_piece!(brd) 
  square = empty_squares(brd).sample
  # winner2 = []
  # w2a = []

  answer = []
  first_num = [] 
  defense_pick = []
  defense_pick << ((1..9).to_a) - empty_squares(brd)
   box = (WINNING_LINES.map {|x| x - defense_pick.flatten})
   winner2 = box.map {|win| win[2] == PLAYER_MARKER}.uniq.flatten.compact
   winner1 = box.map {|win| win[1] == PLAYER_MARKER}.uniq.flatten.compact
  p winner0 = box.map {|win| win[0] == PLAYER_MARKER}.uniq.flatten.compact

  box.select do |arr|
    if arr.count == 1    
    p  answer << arr
     end
  end
  p  (first_num = answer.flatten.min)
  # p w2a = if winner0.include?(first_num)
  #   first_num
  # end
  # p w0a = if winner1.include?(first_num)
  #   first_num
  # end
  # p w1a = if winner2.include?(first_num)
  #   first_num
  # end
# end

  WINNING_LINES.select do |pattern|

    if brd[pattern[0]] == PLAYER_MARKER &&
        brd[pattern[1]] == PLAYER_MARKER
      return brd[first_num] = COMPUTER_MARKER 
      break
      
    elsif brd[pattern[2]] == PLAYER_MARKER &&
          brd[pattern[1]] == PLAYER_MARKER
      return brd[first_num] = COMPUTER_MARKER
      break
    
    elsif brd[pattern[0]] == PLAYER_MARKER &&
          brd[pattern[2]] == PLAYER_MARKER
      return brd[first_num] = COMPUTER_MARKER
      break

    else
      brd[square] = COMPUTER_MARKER
    end
  
  end

end


def someone_won?(brd)
  !!detect_winner(brd)
end


def detect_winner(brd)  
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

player_wins = 0
comp_wins = 0

loop do
  board = initialize_board

  def board_full?(brd)
    empty_squares(brd).empty?
  end

  loop do
    display_board(board)

    player_places_piece!(board)
    if someone_won?(board) || board_full?(board)
      player_wins += 1
      break
    end
    computer_places_piece!(board)
    if someone_won?(board) || board_full?(board)
      comp_wins += 1
      break
    end
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt " It's a tie!"
    player_wins += 1
    comp_wins += 1
  end

  prompt "Won game score is 
  You: #{player_wins} 
  Computer #{comp_wins}"
  if player_wins == 5 then prompt "You Won!"
    break
  elsif comp_wins == 5 then prompt "Computer Won! :( "
    break
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "thanks for playing Tic Tac Toe! Goodbye!"
