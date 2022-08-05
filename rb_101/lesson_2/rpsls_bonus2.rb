require 'pry'
VALID_CHOICES = {'r' =>'rock', 'p' => 'paper', 's' => 'scissors', 'l' =>'lizard', 'k' =>'spock'}

def prompt(message)
  puts("=> #{message}")
end

player = ''

loop do
  loop do
    prompt("You may pick from the following:
    Type 'r' for rock
    Type 'p' for paper
    Type 's' for scissors
    Type 'l' for lizard
    Type 'k' for spock")

    player = gets.chomp.downcase

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

  computer = VALID_CHOICES.values.sample
  translated_choice = VALID_CHOICES.fetch(player)

  puts("you chose #{translated_choice}, the computer chose #{computer}")

  result = outcomes.fetch(translated_choice)

  if result.include?(computer)
    prompt("You won!")
  elsif translated_choice == computer
    prompt("tie!")
  elsif result.none?(computer)
    prompt("computer won!")
  end

  prompt("do you want to play again? y/n")
  play_again = gets.chomp
  break unless play_again.downcase == "y"
end

prompt("Thanks for playing! Byeeeee")
