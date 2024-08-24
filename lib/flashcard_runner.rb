require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round = Round.new(deck)

puts "Welcome! You're playing with #{deck.count} cards"
puts "------------------------------------------------"
puts "This is card number #{num} out of #{deck.count}. "
# tried deck.count[turns.count] and didn't work
puts "Question: #{round.deck.cards[0].question}"
answer = gets.chomp
round.take_turn(answer)
puts round.turns.last.feedback
puts 
end

