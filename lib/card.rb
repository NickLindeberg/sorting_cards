class Card
  attr_reader :value,
              :suit
  def initialize (value_number, suit_guess)
    @suit = suit_guess
    @value = value_number

  end



end
