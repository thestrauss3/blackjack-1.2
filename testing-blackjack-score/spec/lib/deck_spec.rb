require "spec_helper"

describe Deck do
  let(:deck) { Deck.new } # Creates a variable that can be used for tests

  describe "#build_deck" do
    # Remember that the '#' in '#build_deck' means it's a method.
    it "builds a deck of 52 cards" do
      expect(deck.cards.size).to eq 52
      expect(deck.cards).to be_instance_of(Array)
      expect(deck.cards.sample).to be_a(Card)
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq 52
    end

    it "shuffles deck aftering being built" do
      sorted_deck = deck.cards.sort_by {|card| card.rank }
      expect(sorted_deck).to_not eq deck.cards
      expect(sorted_deck[0].rank.to_i).to eq 10
    end
  end

  describe "#deal" do
    it "removes correct number of cards" do
      start_size = deck.cards.size
      finish_size = start_size - 2
      deck.deal
      deck.deal
      expect(deck.cards.size).to eq finish_size
    end

    it "deals the top card in the deck" do
      correct_card = deck.cards[-1]
      expect(deck.deal).to eq correct_card
    end
  end
end
