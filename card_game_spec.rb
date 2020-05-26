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

end
