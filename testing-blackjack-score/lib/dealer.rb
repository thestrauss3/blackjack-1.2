require_relative 'hand'
class Dealer
  attr_reader :hand
  def initialize
    @hand = Hand.new()
  end

  def play_hand(deck)
    while  ((@hand.calculate_hand == 17 && @hand.high_aces > 0) ||
        (@hand.calculate_hand < 17)) do
          card = deck.deal
          puts "Dealer receives #{card.rank}#{card.suit}"
          @hand.hit(card)
          sleep(1)
    end
  end
end
