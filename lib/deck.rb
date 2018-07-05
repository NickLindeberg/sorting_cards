require './lib/round.rb'
require './lib/guess.rb'
require './lib/card.rb'


class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards

  end

  def count
    @cards.count
  end

  def sort

    deck_length = @cards.length


    loop do
      swapped = false

      (deck_length-1).times do |sort|
        if cards[sort].total_value > cards[sort+1].total_value
          cards[sort], cards[sort+1] = cards[sort+1], cards[sort]
          swapped = true
        end
      end

      break if swapped == false
    end
    return cards
  end



end
