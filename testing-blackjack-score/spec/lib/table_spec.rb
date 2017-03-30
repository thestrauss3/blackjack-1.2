require "spec_helper"

describe Table do


  table = Table.new

  describe "#initialize" do
    it "should have a deck" do
      expect(table.deck).to be_a(Deck)
    end

    it "should have a dealer" do
      expect(table.dealer).to be_a(Dealer)
    end

    it "should have a player" do
      expect(table.player).to be_a(Player)
    end

    it "should have an empty seat" do
      #
      #
      #
    end
  end


  describe "#deal_board" do
    it "should give 2 cards to the player and 2 to the dealer" do
      table.deal_board
      expect(table.dealer.hand.cards.size).to be 2
      expect(table.player.hand.cards.size).to be 2
      expect(table.deck.cards.size).to be 48
    end
  end

  describe "#announce_winner" do
    context "player busts" do
      it "should make dealer the winner" do
        # STDOUT.should_receive(:puts).with("Player busts: You lose.")
        # binding.pry
        # table.announce_winner
      end
    end
  end

  describe "#get_winner" do
    context "Player does not score higher than dealer" do
      it "dealer wins" do

      end
    end
    context "Player scores higher than dealer without busting" do
      it "player wins" do

      end
    end
    context "Player scores the same as dealer without busting" do
      it "player pushes" do

      end
    end
    context "player gets blackjack, dealer doesn't" do
      it "Player wins with BLACKJACK" do

      end
    end
    context "dealer gets blackjack, player doesn't" do
      it "dealer wins" do

      end
    end
    context "player and dealer both have blackjack" do
      it "player pushes" do

      end
    end
    context "Player busts" do
      it "Dealer wins" do

      end
      it "Dealer wins even if dealer also busts" do

      end
    end
    context "dealer busts, players hand is live" do
      it "Player wins, announce dealer bust" do

      end
    end
  end
end
