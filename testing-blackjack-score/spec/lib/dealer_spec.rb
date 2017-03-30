require "spec_helper"

describe Dealer do

  three_of_hearts = Card.new(3, SUITS[1])
  six_of_hearts = Card.new(6, SUITS[1])
  seven_of_clubs = Card.new(7, SUITS[3])
  ten_of_spades = Card.new(10, SUITS[0])
  queen_of_diamonds = Card.new('Q', SUITS[2])
  ace_of_spades = Card.new('A', SUITS[0])
  deck = nil
  player = nil
  dealer = nil
  before(:example) do
    deck = Deck.new
    player = Player.new("joe")
    dealer = Dealer.new
  end

  it "should start with an empty hand" do
    expect(dealer.hand.nil?).to be false
    expect(dealer.hand.cards.size).to be 0
  end

  describe "#clear_play" do
    it "should give the dealer one empty hand" do



    end
  end

  describe "#play_hand" do
    before(:example) do

    end
    # context "dealer has less than 17" do
    #   it "deals a card to dealers hand" do
    #     dealer.hand.hit(six_of_hearts)
    #     dealer.hand.hit(ten_of_spades)
    #     dealer.play_hand(deck)
    #     expect(dealer.hand.cards.size).to be > 2
    #   end
    # end
    # context "dealer has a soft 17" do
    #   it "deals a card to dealers hand" do
    #     dealer.hand.hit(six_of_hearts)
    #     dealer.hand.hit(ace_of_spades)
    #     dealer.play_hand(deck)
    #     expect(dealer.hand.cards.size).to be > 2
    #   end
    # end
    # context "dealer has a hard 17" do
    #   it "dealer stands" do
    #     dealer.hand.hit(six_of_hearts)
    #     dealer.hand.hit(ace_of_spades)
    #     dealer.hand.hit(ten_of_spades)
    #     dealer.play_hand(deck)
    #     expect(dealer.hand.cards.size).to be 3
    #   end
    # end
    # context "dealer has more than 17" do
    #   it "dealer stands" do
    #     dealer.hand.hit(ten_of_spades)
    #     dealer.hand.hit(queen_of_diamonds)
    #     expect(dealer.hand.cards.size).to be 2
    #   end
    # end
  end
end
