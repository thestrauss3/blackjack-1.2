class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def get_value
    if ['A','J','Q','K'].include?(@rank)
      get_face_value
    else
      @rank.to_i
    end
  end

  def get_face_value
    if @rank == 'A'
      11
    else
      10
    end
  end

  def ace?
    if @rank == 'A'
      true
    else
      false
    end
  end
end
