##  Flash Cards

Iteration 1
Cards

This is the starter repository for the [Flash Cards](http://backend.turing.io/module1/projects/flashcards) project.
# double check that you are in your flashcards project directory!
pry(main)> require './lib/card'
#=> true

pry(main)> card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
#=> #<Card:0x00007f800e29f0c8 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>

pry(main)> card.question
#=> "What is the capital of Alaska?"

pry(main)> card.answer
#=> "Juneau"

pry(main)> card.category
#=> :Geography
________________________________________
Turns

pry(main)> require './lib/turn'
#=> true

pry(main)> require './lib/card'
#=> true

pry(main)> card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
#=> #<Card:0x00007f800e29f0c8 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>

pry(main)> turn = Turn.new("Juneau", card)
#=> #<Turn:0x00007f99842f0998 @card=#<Card:0x00007f800e29f0c9 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:geography>, @guess="Juneau">

pry(main)> turn.card
#=> #<Card:0x00007f800e29f0c8 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>

pry(main)> turn.guess
#=> "Juneau"

pry(main)> turn.correct?
#=> true

pry(main)> turn.feedback
#=> "Correct!"

________________________________________
Turns

pry(main)> require './lib/turn'
#=> true

pry(main)> require './lib/card'
#=> true

pry(main)> card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
#=> #<Card:0x007ffdf1820a90 @answer="Mercury", @question="Which planet is closest to the sun?", @category=:STEM>

pry(main)> turn = Turn.new("Saturn", card)
#=> #<Turn:0x00007f998413ee60 @card=#<Card:0x007ffdf1820a90 @answer="Mercury", @question="Which planet is closest to the sun?", @category=:STEM>, @guess="Saturn">

pry(main)> turn.card
=> #<Card:0x007ffdf1820a90 @answer="Mercury", @question="Which planet is closest to the sun?", @category=:STEM>

pry(main)> turn.guess
=> "Saturn"

pry(main)> turn.correct?
=> false

pry(main)> turn.feedback
=> "Incorrect."

________________________________________
Iteration 2
Deck

pry(main)> require './lib/card'
#=> true

pry(main)> require './lib/deck'
#=> true

pry(main)> card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
#=> #<Card:0x00007fa16104e160 @answer="Juneau", @question="What is the capital of Alaska?", @category=:Geography>

pry(main)> card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
#=> #<Card:0x00007fa160a62e90 @answer="Mars", @question="The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", @category=:STEM>

pry(main)> card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
#=> #<Card:0x00007fa161a136f0 @answer="North north west", @question="Describe in words the exact direction that is 697.5° clockwise from due north?", @category=:STEM>

pry(main)> cards = [card_1, card_2, card_3]

pry(main)> deck = Deck.new(cards)
#=> #<Deck:0x00007fa160a38ed8...>

pry(main)> deck.cards
#=> [#<Card:0x00007fa16104e160...>, #<Card:0x00007fa160a62e90...>, #<Card:0x00007fa161a136f0...>]

pry(main)> deck.count
#=> 3

pry(main)> deck.cards_in_category(:STEM)
#=> [#<Card:0x00007fa160a62e90...>, #<Card:0x00007fa161a136f0...>]

pry(main)> deck.cards_in_category(:Geography)
#=> [#<Card:0x00007fa16104e160...>]

pry(main)> deck.cards_in_category("Pop Culture")
#=> []

___________________________________________
ROUND

pry(main)> require './lib/card'
#=> true

pry(main)> require './lib/turn'
#=> true

pry(main)> require './lib/deck'
#=> true

pry(main)> require './lib/round'
#=> true

pry(main)> card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
#=> #<Card:0x00007fa16104e160 @answer="Juneau", @question="What is the capital of Alaska?", @category=:Geography>

pry(main)> card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
#=> #<Card:0x00007fa160a62e90 @answer="Mars", @question="The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", @category=:STEM>

pry(main)> card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
#=> #<Card:0x00007fa161a136f0 @answer="North north west", @question="Describe in words the exact direction that is 697.5° clockwise from due north?", @category=:STEM>

pry(main)> deck = Deck.new([card_1, card_2, card_3])
#=> #<Deck:0x00007fa160a38ed8...>

pry(main)> round = Round.new(deck)
#=> #<Round:0x00007f972a1c7960...>,

pry(main)> round.deck
#=> #<Deck:0x00007fa160a38ed8...>

pry(main)> round.turns
#=> []

pry(main)> round.current_card
#=> #<Card:0x00007fa16104e160 @answer="Juneau", @question="What is the capital of Alaska?", @category=:Geography>

pry(main)> new_turn = round.take_turn("Juneau")
#=> #<Turn:0x00007f99842f09e8 @card=#<Card:0x00007f800e29f0c9 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>, @guess="Juneau">

pry(main)> new_turn.class
#=> Turn

pry(main)> new_turn.correct?
#=> true

pry(main)> round.turns
#=> [#<Turn:0x00007f99842f09e8 @card=#<Card:0x00007f800e29f0c9 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>, @guess="Juneau">]

pry(main)> round.number_correct
#=> 1

pry(main)> round.current_card
#=> #<Card:0x00007fa160a62e90 @answer="Mars", @question="The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", @category=:STEM>

pry(main)> round.take_turn("Venus")
#=> #<Turn:0x00007f972a215b38...>

pry(main)> round.turns.count
#=> 2

pry(main)> round.turns.last.feedback
#=> "Incorrect."

pry(main)> round.number_correct
#=> 1

pry(main)> round.number_correct_by_category(:Geography)
#=> 1

pry(main)> round.number_correct_by_category(:STEM)
#=> 0

pry(main)> round.percent_correct
#=> 50.0

pry(main)> round.percent_correct_by_category(:Geography)
#=> 100.0

pry(main)> round.current_card
#=> #<Card:0x00007fa161a136f0 @answer="North north west", @question="Describe in words the exact direction that is 697.5° clockwise from due north?", @category=:STEM>

________________________________________

Iteration 3

Playing the Game!
So far we’ve focused on modeling the data, classes, and methods that make up our game. However we haven’t done much to put any kind of useable interface onto the game. In this iteration, let’s remedy this by adding a simple Command-Line-Interface (CLI) to the game.

A few key points to keep in mind as you work on this iteration:

We’ll abandon testing for this bit – the techniques for testing this kind of input/output behavior are somewhat involved and are beyond the scope of this project
Use puts to display a line of text output to the user
Use gets to read a line of text input from the user (this will be important to allow users to enter guesses)
In this iteration we’ll introduce a new file called a “runner” – its job is to serve as the main entry point to our program by starting up a new game
First, create your runner file:

touch flashcard_runner.rb
Inside of this file, write the code to do the following:

Create some Cards
Put those card into a Deck
Create a new Round using the Deck you created
Start the round using a new method called start
Keep in mind that your existing objects should already contain, more or less, the data and methods needed to manage this process. Your challenge in this iteration is to build out the input/output messaging to support the user’s card experience using your existing pieces to store and manage all the necessary data.

When we start the round by running ruby flashcard_runner.rb, it should produce the following interaction from the command line:

Welcome! You're playing with 4 cards.
-------------------------------------------------
This is card number 1 out of 4.
Question: What is 5 + 5?
Then a user will be able to type in a guess, in this case 10, and hit enter to move the game play forward.

10
Correct!
This is card number 2 out of 4.
Question: What is Rachel's favorite animal?
The game will continue until all the Cards in the Deck have had a guess made against them (until you have completed as many Turns as you have Cards in the Deck).

panda
Incorrect.
This is card number 3 out of 4.
Question: What is Mike's middle name?
nobody knows
Correct!
This is card number 4 out of 4.
Question: What cardboard cutout lives at Turing?
Justin Bieber
Correct!
When all the Turns have been made, the game will end and will present the user with a final score.

****** Game over! ******
You had 3 correct guesses out of 4 for a total score of 75%.
STEM - 100% correct
Turing Staff - 50% correct
Pop Culture - 100% correct
Seen together, the CLI will look something like this when the game is over:

Welcome! You're playing with 4 cards.
-------------------------------------------------
This is card number 1 out of 4.
Question: What is 5 + 5?
10
Correct!
This is card number 2 out of 4.
Question: What is Rachel's favorite animal?
panda
Incorrect.
This is card number 3 out of 4.
Question: What is Mike's middle name?
nobody knows
Correct!
This is card number 4 out of 4.
Question: What cardboard cutout lives at Turing?
Justin Bieber
Correct!
****** Game over! ******
You had 3 correct guesses out of 4 for a total score of 75%.
STEM - 100% correct
Turing Staff - 50% correct
Pop Culture - 100% correct
