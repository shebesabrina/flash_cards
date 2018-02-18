require './test/test_helper'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/card_generator'


class CardGeneratorTest < Minitest::Test
  def setup
    filename = File.dirname(__FILE__) + '/../cards.txt'
    @cards = CardGenerator.new(filename).cards
  end

  def test_it_exists
    assert_equal @cards[0].question, "What is 5 + 5?"
    assert_equal @cards[0].answer, "10"
    assert_equal @cards[1].question, "What is Rachel's favorite animal?"
    assert_equal @cards[1].answer, "red panda"
    assert_equal @cards[2].question, "What is Mike's middle name?"
    assert_equal @cards[2].answer, "nobody knows"
    assert_equal @cards[3].question, "What cardboard cutout lives at Turing?"
    assert_equal @cards[3].answer, "Justin Bieber"
  end

end
