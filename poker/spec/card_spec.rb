require "card"

RSpec.describe do
  subject(:card) { Card.new(:A, 14) }
  describe "#initialize" do
    it "should initialize card" do 
      expect(card.type).to eq(:A)
      expect(card.value).to eq(14)
    end
  end

end