require "./lib/guess.rb"
require './lib/card.rb'
require './lib/deck.rb'
require './lib/round.rb'
require "minitest/autorun"
require 'minitest/pride'
require 'pry'

class RoundTest <Minitest::Test
  def test_if_round_exists
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_if_round_calls_deck
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Deck, round.deck
  end

  def test_if_guesses_creates_empty_array
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_if_current_card
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_if_guessses_recorded
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Guess, round.record_guess({value: "Jack", suit: "Diamonds"})
    refute round.guesses.empty?
  end

  def test_if_guessses_counted
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 1, round.guesses.count
  end

  def test_if_first_guess_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal "Correct", round.guesses.first.feedback
  end

  def test_if_guessses_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 2, round.guesses.count
  end

  def test_if_second_guess_incorrect
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal "Incorrect", round.guesses.last.feedback
  end

  def test_if_number_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
binding.pry 
    assert_equal 1, round.number_correct
  end

  def test_percentage_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 50, round.percent_correct
  end




end
