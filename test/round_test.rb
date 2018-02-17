require './test/test_helper'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'


class RoundTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Approximately how many miles are in one astronomical
                      unit?", "93,000,000")
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_for_deck_in_round
    assert_equal @deck, @round.deck
  end

  def test_it_can_generate_a_guess
    assert_equal [], @round.guesses
  end

  def test_there_is_a_current_card
    assert_equal @card_1, @round.current_card
    assert_equal @card_2, @round.current_card
  end

  def test_it_can_record_a_guess
    assert_equal "Juneau", @round.record_guess("Juneau")
    assert_equal "93,000,000", @round.record_guess("93,000,000")
  end

  def test_the_count_of_guesses
    @round.record_guess("Juneau")
    assert_equal 1, @round.guesses.count

    @round.record_guess("93,000,000")
    assert_equal 2, @round.guesses.count
  end

  def test_if_the_feedback_of_guess
    @round.record_guess("Juneau")
    assert_equal "Correct!", @round.guesses.first.feedback

    @round.record_guess("93")
    assert_equal "Incorrect.", @round.guesses.last.feedback
  end

  def test_number_of_correct_guesses
    @round.record_guess("Juneau")
    assert_equal 1, @round.number_correct

    @round.record_guess("93,000,000")
    assert_equal 2, @round.number_correct
  end

  def test_it_can_generate_a_guess_count
    assert_equal "2", @round.record_guess("2")
  end

  def test_the_precentage
    skip
    @round.record_guess("Juneau")
    @round.record_guess("93")

    assert_equal 50, @round.percent_correct
  end

end
