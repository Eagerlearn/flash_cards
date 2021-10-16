require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'

@card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
@card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
@card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
@card_4 = Card.new("Where in the world is Carmen San Diego?", "Anywhere Carmen chooses", :Entertainment)

@cards = [@card_1, @card_2, @card_3, @card_4]
@deck = Deck.new(@cards)
@round = Round.new(@deck)
@count = 1

@round.start

guess = gets.chomp
