require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'
  hand = nil
  three_of_hearts = Card.new(3, SUITS[1])
  ten_of_spades = Card.new(10, SUITS[0])
  queen_of_diamonds = Card.new('Q', SUITS[2])
  ace_of_spades = Card.new('A', SUITS[0])
  before(:example) do
    hand = Hand.new
  end
  # You can add more sample hands

  it "creates an empty array" do
    expect(hand.cards).to be_a(Array)
    expect(hand.cards.size).to be 0
  end

  describe "#hit" do
    it "adds a card object to @cards" do
      hand.hit(three_of_hearts)
      expect(hand.cards.size).to be 1
      expect(hand.cards[0]).to be_a(Card)
    end
  end

  describe "#calculate_hand" do
    it "adds the values of 'regular' cards" do
      hand.hit(three_of_hearts)
      hand.hit(queen_of_diamonds)
      expect(hand.calculate_hand).to eq 13
    end

    it "counts Ace as 11 to give a better score" do
      hand.hit(three_of_hearts)
      hand.hit(ace_of_spades)
      expect(hand.calculate_hand).to eq(14)
    end

    it "counts Ace as 1 to prevent busting" do
      hand.hit(three_of_hearts)
      hand.hit(ace_of_spades)
      hand.hit(ten_of_spades)
      expect(hand.calculate_hand).to eq(14)
    end

    it "handles two Aces properly" do
      hand.hit(ace_of_spades)
      hand.hit(ace_of_spades)
      expect(hand.calculate_hand).to be 12
      hand = Hand.new
      hand.hit(ace_of_spades)
      hand.hit(ace_of_spades)
      hand.hit(queen_of_diamonds)
      expect(hand.calculate_hand).to be 12
    end
  end

  describe "#clear_hand" do
    it "removes all cards from hand (at the end of a round)" do
      hand = Hand.new
      hand.hit(ace_of_spades)
      expect(hand.cards.size).to be 1
      hand.clear_hand
      expect(hand.cards.size).to be 0
    end
  end

  describe "#bust?" do
    it "returns true if the hand is over 21, else false" do
      hand.hit(queen_of_diamonds)
      hand.hit(ten_of_spades)
      hand.hit(ace_of_spades)
      expect(hand.bust?).to be false
      hand.hit(three_of_hearts)
      expect(hand.bust?).to be true
    end
  end
end
