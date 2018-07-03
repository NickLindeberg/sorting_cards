require '../lib/card.rb'

######check attr_reader info
class Guess
  attr_reader :response, :card
  def initialize (response, card)
    @response = response
    @card = card
  end

  def correct?
    true

  end

  def response
    "#{value} of #{suit}"

  end

  def feedback


  end

end
