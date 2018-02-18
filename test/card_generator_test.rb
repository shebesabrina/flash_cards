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
    assert_instance_of CardGenerator, @cards
  end

end
