require 'pry'

class CardGenerator
  attr_accessor :cards

  def initialize(filename)
    @cards = []
    File.open(filename, "r").each_line do |line|
      data = line.split(/\n/)
      question, answer = data.map{ |line| line.split(",") }.flatten
      card = Card.new(question, answer)
      @cards.push(card)
    end
  end
end
