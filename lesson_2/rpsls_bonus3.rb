require 'pry'
VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  's' => 'scissors',
                  'l' => 'lizard',
                  'k' => 'spock' }

def prompt(message)
  puts("=> #{message}")
end

player = ''

loop do
  loop do
    prompt("Hey! Let's play a game of Rock Paper Scissors Lizard Spock.
    First to three wins is the champion. Please pick from the following:
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

  score_comp = 0
  score_hum = 0

  loop do
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
      score_hum += 1
    elsif translated_choice == computer
      prompt("tie!")
    elsif result.none?(computer)
      prompt("computer won!")
      score_comp += 1
    end

    prompt("The score is now:
      You: #{score_hum}
      Computer: #{score_comp}")

    if score_comp == 3
      prompt("The Computer is the champion!")
      break
    elsif score_hum == 3
      prompt("You are the champion!")
      break
    else prompt("Next round!")
    end

    prompt("Choose again!
    Type 'r' for rock
    Type 'p' for paper
    Type 's' for scissors
    Type 'l' for lizard
    Type 'k' for spock")

    player = gets.chomp.downcase
  end

  prompt("do you want to play again? y/n")
  play_again = gets.chomp
  break unless play_again.downcase == "y"
end

prompt("Thanks for playing! Byeeeee")
