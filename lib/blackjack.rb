def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def invalid_command
  puts  "Please enter a valid command"
end

def hit?(ir)
  loop do
    prompt_user
    input = get_user_input
    if input == "h"
      return ir += deal_card
    elsif input == "s"
      return ir
    else
      invalid_command
    end
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until player > 21
    num = hit?(player)
    display_card_total(num)
    num
  end
end
