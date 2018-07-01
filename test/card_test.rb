require "../lib/card.rb"
require "minitest/autorun"
require 'minitest/pride'

class CardTest <Minitest::Test
  def test_if_card_exsits
  card = Card.new("Ace", "Spades")
  assert_instance_of Card, card
  end

  def test_card_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_card_suit
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end

###update 

end
