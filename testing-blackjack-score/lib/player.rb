class Player
  attr_reader :hand, :name
  def initialize(name)
    @hand = Hand.new
    @name = name
  end

  def get_action(deck)
    input = announce_start_turn
    until input == 's'
      input = ask_player_action
      if input == 'h'
        handle_player_hit(deck)
      end
      if check_bust
        break
      end
    end
  end

  def check_bust
    if @hand.bust?
      puts "You have #{@hand.calculate_hand}"
      puts "#{@name} busts. Dealer wins."
      true
    end
  end
  def announce_start_turn
    puts "#{@name}, it's your turn."
  end

  def ask_player_action
    puts "You have #{@hand.calculate_hand}."
    print "Would you like to hit or stand? (h/s): "
    gets.chomp
  end

  def handle_player_hit(deck)
    card = deck.deal
    @hand.hit(card)
    puts card.rank + card.suit
  end
end
