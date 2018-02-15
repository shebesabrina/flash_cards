require 'pry'

class Guess
  attr_reader :response,
              :card

  def initialize(response, card)
    @response =  response
    @card = card
  end

  def correct?
    @response == @card.answer
  end

  def response
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end

end
