require_relative '../lib/card'
require_relative '../lib/guess'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_instance_of Card, card
  end
#
  def test_there_is_a_question

    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_it_can_generate_an_answer
  
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "Juneau", card.answer
  end
end

# card.question
# => "What is the capital of Alaska?"
# card.answer
# => "Juneau"
