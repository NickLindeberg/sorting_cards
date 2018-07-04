require "./lib/guess.rb"
require './lib/card.rb'
require "minitest/autorun"
require 'minitest/pride'
require 'pry'

class GuessTest <Minitest::Test
  def test_if_card_exists
    card = Card.new("10", "Hearts")

    assert_instance_of Card, card
  end

  def test_if_card_can_be_accessed_in_guess
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Card, guess.card
  end

  def test_if_responce_works
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10 of Hearts", guess.response
  end

  def test_if_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal true, guess.correct?
  end

  def test_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct", guess.feedback
  end

  def test_if_incorrect_guess_accessed
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_instance_of Card, guess.card
  end

  def test_if_responce_fails
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "2 of Diamonds", guess.response
  end

  def test_if_false
    card = Card.new("1", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    refute guess.correct?
  end

  def test_feedback_incorrect
    card = Card.new("1", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "Incorrect", guess.feedback
  end




end
