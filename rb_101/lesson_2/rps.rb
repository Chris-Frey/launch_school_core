VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (computer == 'rock' && player == 'scissors') ||
        (computer == 'paper' && player == 'rock') ||
        (computer == 'scissors' && player == 'paper')
    prompt("computer won!")
  else
    prompt("it's a tie!")
  end
end

loop do
  player = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    player = gets.chomp

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That's not a valid choice")
    end
  end
  computer = VALID_CHOICES.sample

  puts("you chose #{player}, the computer chose #{computer}")

  display_results(player, computer)

  prompt("do you want to play again? y/n")
  play_again = gets.chomp
  break unless play_again.downcase == "y"
end

prompt("thanks for playing! byeeeee")
