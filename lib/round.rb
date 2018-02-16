require 'pry'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
  end

  def current_card #may need to modify
    @current_card = @deck.cards[@current_card_index]
    @current_card_index += 1
    @current_card
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    response
  end

end
