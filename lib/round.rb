require 'pry'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
    @correct_cards = 0
  end

  def current_card
    @current_card = @deck.cards[@current_card_index]
    @current_card_index += 1
    @current_card
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    response
  end

  def number_correct
    number_correct = @guesses.find_all do |guess|
      guess.correct?
    end
    @correct_cards = number_correct.count
  end

  def percent_correct
    ((number_correct.to_f / @guesses.count) * 100).to_i
  end

end
