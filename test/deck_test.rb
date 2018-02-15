require './lib/card'
require './lib/guess'
require './lib/deck'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DeckTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?",
    "Mars")
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?",
    "North north west")
  end

  end

  def test_it_exists
skip
    assert_instance_of Deck, @card_1
    assert_instance_of Deck, @card_2
    assert_instance_of Deck, @card_3
  end


  def test_it_can_add_cards_in_a_deck
    skip
    deck = Deck.new([@card_1, @card_2, @card_3])
    assert_equal [@card_1, @card_2, @card_3], Deck.count
  end
end
