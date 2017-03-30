require "spec_helper"

describe Player do


  deck = nil
  player = nil
  before(:example) do
    deck = Deck.new
    player = Player.new("Joe")
  end
  it "should start with an empty hand" do
    expect(player.hand).to be_instance_of(Hand)
    expect(player.hand.cards.size).to be 0
  end

  it "should have a @name" do
    expect(player.name).to eq "Joe"
  end

  describe "#get_action" do
    describe "calls on either hit or stand based on user input" do

      context "player hits" do
        it "adds a card to the players hand" do
          # instructions("hit one time then stand")
          # player.get_action(deck)
          # expect(player.hand.cards.size).to be 1
        end
      end

      context "player stands" do
        it "adds no cards" do
          # instructions("stand")
          # player.get_action(deck)
          # expect(player.hand.cards.size).to be 0
        end

        it "ends players turn" do
          #
          #
          #
        end
      end
    end
  end

  describe "#clear_play" do
    it "should give the player one empty hand" do

    end
  end
end
