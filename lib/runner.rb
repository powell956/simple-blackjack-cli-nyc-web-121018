require_relative "blackjack.rb"

welcome
initial_round
hit
until card_total > 21
  display_card_total
end
end_game
