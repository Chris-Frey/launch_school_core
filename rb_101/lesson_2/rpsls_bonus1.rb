require 'pry'
VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts("=> #{message}")
end

player = ''

loop do
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    player = gets.chomp

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  outcomes =  {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'spock'],
    'scissors' => ['paper', 'lizard'],
    'lizard' => ['spock', 'paper'],
    'spock' => ['scissors', 'rock']
  }

  computer = VALID_CHOICES.sample
  puts("you chose #{player}, the computer chose #{computer}")

  result = outcomes.fetch(player)

  if result.include?(computer)
    prompt("You won!")
  elsif player == computer
    prompt("tie!")
  elsif result.none?(computer)
    prompt("computer won!")
  end

  prompt("do you want to play again? y/n")
  play_again = gets.chomp
  break unless play_again.downcase == "y"
end

prompt("thanks for playing! byeeeee")
