require "./lib/guess.rb"
require './lib/card.rb'
require "minitest/autorun"
require 'minitest/pride'
require 'pry'

class DeckTest <Minitest::Test
  def test_if_deck_stores_cards
    card_1 = Card.new()
