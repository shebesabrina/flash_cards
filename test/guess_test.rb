require './lib/card'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GuessTest < Minitest::Test
  def setup
  @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
  @card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
  @card_3 = Card.new("Describe in words the exact direction that is 697.5°
                     clockwise from due north?","North north west")
  @guess_1 = Guess.new("Juneau", @card_1)
  @guess_2 = Guess.new("Saturn", @card_2)
  @guess_3 = Guess.new("North north west", @card_3)
  end

  def test_it_exists
    assert_instance_of Guess, @guess_1
  end

  def test_there_is_a_card_in_deck
    assert @card_1, @guess_1.card
  end

  def test_it_can_respond
    assert_equal "Juneau", @guess_1.response
  end

  def test_if_response_is_correct
    assert @guess_1.correct?
    refute @guess_2.correct?
    assert @guess_3.correct?
  end


  def test_the_response_is_incorrect
    assert_equal "Correct!", @guess_1.feedback
  end

end
