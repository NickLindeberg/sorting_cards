require './lib/deck.rb'
require './lib/guess.rb'
require './lib/card.rb'
require 'pry'

class Round
  attr_reader :guesses,
              :deck,
              :current_card,
              :record_guess,
              :hash,
              :number_correct
              :percent_correct
  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @total_guess = 0


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
    if new_guess.correct? == true
      @number_correct += 1
      @total_guess += 1
    else
      @total_guess += 1
    end

    def percent_correct
      @number_correct.to_f / @total_guess.to_f * 100

    end
    return new_guess
  end
end
