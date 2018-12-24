require_relative "blackjack.rb"

welcome
initial_round
until card_total > 21
  hit
  display_card_total
end
end_game
