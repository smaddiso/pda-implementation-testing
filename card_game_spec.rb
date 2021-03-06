require('minitest/autorun')
require('minitest/reporters')
require_relative('card_game.rb')
require_relative('card.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

  def test_check_for_ace()
    card = Card.new("spade", 1)
    card_game = CardGame.new()
    assert_equal(true, card_game.check_for_ace(card))
  end

  def test_highest_card()
    card1 = Card.new("spade", 8)
    card2 = Card.new("heart", 5)
    card_game = CardGame.new()
    assert_equal(8, card_game.highest_card(card1, card2).value)
  end

  def test_self_cards_total()
    card1 = Card.new("spade", 8)
    card2 = Card.new("heart", 5)
    card3 = Card.new("Diamond", 3)
    cards = [card1, card2, card3]
    assert_equal("You have a total of 16", CardGame.cards_total(cards))
  end

end
