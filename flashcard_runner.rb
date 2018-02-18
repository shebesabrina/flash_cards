require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/card_generator'
require 'pry'

filename =  'cards.txt'
cards = CardGenerator.new(filename).cards
binding.pry
card = Card.new(card)
deck = Deck.new(deck)

# puts"Welcome! You're playing with 4 cards."
# puts "-------------------------------------------------"
# puts "This is card number 1 out of 4."
# puts "Question: What is 5 + 5?"
# puts "10"
# puts "Correct!"
# puts "This is card number 2 out of 4."
# puts "Question: What is Rachel's favorite animal?"
# puts "panda"
# puts "Incorrect."
# puts This is card number 3 out of 4.
# Question: What is Mike's middle name?
# nobody knows
# Correct!
# This is card number 4 out of 4.
# Question: What cardboard cutout lives at Turing?
# Justin Bieber
# Correct!
# ****** Game over! ******
# You had 3 correct guesses out of 4 for a score of 75%.
