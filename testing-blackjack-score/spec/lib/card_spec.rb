require "spec_helper"

describe Card do

  three_of_hearts = Card.new(3, SUITS[1])
  ten_of_spades = Card.new(10, SUITS[0])
  queen_of_diamonds = Card.new('Q', SUITS[2])
  ace_of_spades = Card.new('A', SUITS[0])

  it "should have a rank" do
    rank = ten_of_spades.rank
    expect(rank).to eq 10
  end

  it "should have a suit" do
    rank = ten_of_spades.suit
    expect(rank).to eq '♠'
  end

  describe "#get_value" do
    it "should return the value for ranks 2-10" do
      expect(three_of_hearts.get_value).to eq 3
      expect(ten_of_spades.get_value).to eq 10
    end

    it "should return 10 for 'J', 'Q', 'K' ranks" do
      expect(queen_of_diamonds.get_value).to eq 10
    end

    it "should return 11 for 'A' rank" do
      expect(ace_of_spades.get_value).to eq 11
    end
  end
end
