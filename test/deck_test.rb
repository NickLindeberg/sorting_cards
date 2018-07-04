require "./lib/guess.rb"
require './lib/card.rb'
require './lib/deck.rb'
require "minitest/autorun"
require 'minitest/pride'
require 'pry'

class DeckTest <Minitest::Test
  def test_if_deck_stores_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    expected = [card_1, card_2, card_3]

    assert_equal expected, deck.cards
  end

  def test_if_deck_is_counted
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal 3, deck.count

  end 


end
