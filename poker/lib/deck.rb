require_relative "card"

class Deck
  CARDS = {
    :A => 14,
    :K => 13,
    :Q => 12,
    :J => 11,
    10 => 10,
    9 => 9, 
    8 => 8,
    7 => 7,
    6 => 6,
    5 => 5,
    4 => 4,
    3 => 3,
    2 => 2
  }
  attr_reader :cards

  def initialize
    @cards = []
  end

  def make_deck
    all_cards = []
    
    CARDS.each do |key, val|
      4.times do
        card = Card.new(key, val)
        all_cards << card
      end
    end

    all_cards
  end

  def fill_cards
    cards.concat(make_deck)
  end

  def shuffle_cards
    cards.shuffle!
  end

end