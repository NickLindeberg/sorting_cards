require './lib/deck.rb'
require './lib/guess.rb'
require './lib/card.rb'
require 'pry'

class Round
  attr_reader :guesses,
              :deck,
              :current_card,
              :record_guess,
              :hash
  def initialize(deck)
    @deck = deck
    @guesses = []

  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(hash)
    value = hash[:value]
    suit = hash[:suit]
    response = "#{value} of #{suit}"
    new_guess = Guess.new(response, current_card)
    @guesses << new_guess
    return new_guess
  end

  def number_correct
  end

  


end
