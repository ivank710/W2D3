require 'deck'

RSpec.describe do
  subject(:deck) { Deck.new }
  let(:card) { double( card, 5) }
  describe "#initialize" do
    it "initializes cards array" do
     expect(deck.cards).to be_empty
    end
  end

  describe  "#make_deck" do
    it "returns an array of all cards" do
      cards_set = deck.make_deck
      expect(cards_set.length).to eq(52)
    end
  end

  describe "#fill_cards" do
    it "fills cards with all types of cards" do
      deck.fill_cards
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#shuffle_cards" do
    it "shuffles the deck" do
      deck.fill_cards
      sorted = deck.cards
      shuffled = deck.shuffle_cards

      # expect(shuffled).to_not eq(sorted)
      # expect(shuffled.length).to eq(sorted.length)
      # expect(shuffled.sort).to eq(sorted)
    end
  end

end
