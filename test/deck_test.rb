require './lib/card'
require './lib/guess'
require './lib/deck'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DeckTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?",
     "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?",
    "North north west")

    assert_instance_of Card, card_1
    assert_instance_of Card, card_2
    assert_instance_of Card, card_3
  end
end
