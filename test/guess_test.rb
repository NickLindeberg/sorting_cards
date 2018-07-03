require "../lib/guess.rb"
require "../lib/card.rb"
require "minitest/autorun"
require 'minitest/pride'
require 'pry'

class GuessTest <Minitest::Test
  def test_if_card_exists
    card = Card.new("10", "Hearts")
    assert_instance_of Card, card
  end

  def test_if_card_and_guess_talk
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Card, guess.card
  end

  def test_if_response_is_good
    card = Card.new("10", "Hearts")
    guess = Guess.new("10", "Hearts")
    expected = ("10 of Hearts")
binding.pry
    assert_equal expected, guess.response

  end

  def test_if_guess_is_t_or_f
    guess = Guess.new("10", "Hearts")
    assert_equal true, guess.correct?

  end

  def test_if_feedback_shows_correct
    guess = Guess.new("10", "Hearts")
    expected =
    assert_equal "Correct", guess

  end



end
