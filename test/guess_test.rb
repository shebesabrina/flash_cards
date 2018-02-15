require './lib/card'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GuessTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    assert_instance_of Guess, guess_1
  end

  def test_it_can_respond
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)

    assert_equal "Correct!", guess_1.response
  end

  def test_the_response_is_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Mercury", card_2)
    card_3 = Card.new(
    "Describe in words the exact direction that is 697.5° clockwise from due north?",
    "North north west")
    guess_3 = Guess.new("North north west", card_3)

    assert_equal true, guess_1.correct?
    assert_equal true, guess_2.correct?
    assert_equal true, guess_3.correct?
  end

  def test_the_response_is_incorrect
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Saturn", card_2)

    assert_equal false, guess_2.correct?
  end

end
