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
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0
  card_total += deal_card #same as card_total = card_total + deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?
  card_total = 0
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total += 0
  else
    invalid_command
    prompt_user
    card_total = hit?
  end
  card_total
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 22
    card_total += hit?
    display_card_total(card_total)
  end
  end_game(card_total)
end
