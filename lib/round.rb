require 'pry'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
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
    number_correct.count
  end

  def percent_correct
    ((number_correct.to_f / @guesses.count) * 100).to_i
  end

  def start
    puts"Welcome! You're playing with #{deck.count} cards."
    puts "-------------------------------------------------\n\n"

    deck.cards.each_with_index.map { |card, index|
      puts "This is card number #{index + 1} out of #{deck.count}"
      puts "Question: #{card.question}"
      response = gets.strip
      guess = Guess.new(response, card)
      @guesses.push(guess)
      puts "#{guess.feedback}\n\n"
    }

    puts "You had #{number_correct} correct guesses out of #{deck.cards.count} for a score of %#{percent_correct}."
  end
end
