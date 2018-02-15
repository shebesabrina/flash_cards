require './lib/card'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CardTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
  end

  def test_it_exists
    assert_instance_of Card, @card_1
  end

  def test_there_is_a_question
    assert_equal "What is the capital of Alaska?", @card_1.question
  end

  def test_it_can_generate_an_answer
    assert_equal "Juneau", @card_1.answer
  end

  def test_it_can_generate_a_different_card
    assert_equal "Mercury", @card_2.answer
  end
end
