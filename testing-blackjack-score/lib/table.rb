require_relative "deck"
require_relative "dealer"
require_relative "player"

class Table
  attr_reader :deck, :dealer, :player
  def initialize
    @deck = Deck.new
    @dealer = Dealer.new
    @players = [Player.new("Joe")]
  end

  def deal_board
    2.times do
      @players.each do |player|
        give_player_card(player)
      end
      give_dealer_card
    end
  end

  def give_player_card(player)
    card = @deck.deal
    puts "#{player.name} receives #{card.rank}#{card.suit}"
    player.hand.hit(card)
  end

  def give_dealer_card
    card = @deck.deal
    @dealer.hand.hit(card)
  end

  def announce_dealer_starting_cards
    puts "Dealer shows: " + @dealer.hand.cards[0].rank + @dealer.hand.cards[0].suit
    puts "Dealer is showing #{@dealer.hand.cards[0].get_value}"
  end

  def play_game
    deal_board
    @players.each do |player|
      announce_dealer_starting_cards
      player.get_action(@deck)
    end
    @dealer.play_hand(@deck)
    conclude_hand
  end

  def conclude_hand
    @players.each do |player|
      announce_player_score(player)
    end

  end
  def announce_winner
    @players.each do |player|
      announce_player_score(player)
    end
    announce_dealer_score
  end

  def compare_scores

  end

  def announce_player_score(player)
    unless player.hand.bust?
      puts "#{player.name} has: #{player.hand.calculate_hand}"
    end
  end

  def announce_dealer_score
    unless @dealer.hand.bust?
      puts "Dealer has: #{@dealer.hand.calculate_hand}"
    end
  end
end
