class Card
  attr_reader :value,
              :suit,
              :total_value

  def initialize (value_number, suit_guess)
    @suit = suit_guess
    @value = value_number
    @total_value = total_value

  end

  def total_value
    card_value = {
                "2" => 2.0,
                "3" => 3.0,
                "4" => 4.0,
                "5" => 5.0,
                "6" => 6.0,
                "7" => 7.0,
                "8" => 8.0,
                "9" => 9.0,
                "10" => 10.0,
                "Jack" => 11.0,
                "Queen" => 12.0,
                "King" => 13.0,
                "Ace" => 14.0,
                "Clubs" => 0.1,
                "Diamonds" => 0.2,
                "Hearts" => 0.3,
                "Spades" => 0.4
              }
    total_value = card_value[@value] + card_value[@suit]
  return total_value
  end


end
