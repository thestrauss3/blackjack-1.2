require_relative 'deck'
require 'pry'

class Hand
  attr_reader :cards, :high_aces

  def initialize
    @cards = []
    @high_aces = 0
    @value = 0
  end

  def blackjack?
    calculate_hand == 21 && @cards.size == 2
  end

  def calculate_hand
    @value = 0
    adjust_value
    reduce_value_with_aces
  end

  def adjust_value
    @cards.each do |card|
      @value += card.get_value
      increase_high_ace?(card)
    end
  end

  def clear_hand
    @cards = []
    @high_aces = 0
    @value = 0
  end

  def hit(card)
    add_card(card)
  end

  def bust?
    if calculate_hand > 21
      true
    else
      false
    end
  end

  private

  def add_card(card)
    @cards << card
  end

  def increase_high_ace?(card)
    if card.ace?
      @high_aces += 1
    end
  end

  def reduce_value_with_aces
    while @value > 21 && @high_aces > 0
      @value -= 10
      @high_aces -= 1
    end
    return @value
  end
end
