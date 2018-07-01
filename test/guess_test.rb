require "../lib/guess.rb"
require "../lib/card.rb"
require "minitest/autorun"
require 'minitest/pride'

class GuessTest <Minitest::Test
  def test_if_card_exsits
  card = Card.new("10", "Hearts")
  assert_instance_of Card, card
  end
end
