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
  end

  def test_it_can_record_a_guess
    assert_equal "Juneau", @round.record_guess("Juneau")
    assert_equal "93,000,000", @round.record_guess("93,000,000")
  end

  def test_the_count_of_guesses
    skip
    assert_equal 1, @round.guesses.count
  end

end
