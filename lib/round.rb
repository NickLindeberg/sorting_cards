require './lib/deck.rb'


class Round
  attr_reader :guesses,
              :deck
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck
  end

  def record_guess
    
  end

end
