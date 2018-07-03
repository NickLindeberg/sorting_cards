require './lib/card.rb'

class Guess
  attr_reader :response,
              :card,
              :suit,
              :value
  def initialize (response, card)
    @response = response
    # @card = Card.new("10", "Hearts")
    @card = card
  end

  def correct?
    if "#{card.value} of #{card.suit}" == @response
      true
    else
      false
    end
  end

  def feedback
    if correct?
       "Correct"
    else
       "Incorrect"
    end
  end

end
