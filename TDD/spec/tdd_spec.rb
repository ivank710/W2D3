require 'tdd'

RSpec.describe do
subject(:arr) { Array.new }

  describe "#my_uniq" do 
    context "when it's not an array" do
      it "raises error" do
        str = String.new
        expect{ str.my_uniq }.to raise_error(NoMethodError)
      end
    end

    context "when an array is empty" do 
      it "returns an empty array" do
        expect(arr.my_uniq).to be_empty
      end
    end

    it "returns an array with all unique elements" do
      arr = [1, 2, 1, 3, 3]
      expect(arr.my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum" do
    context "when it's not an array" do
      it "raises error" do
        str = String.new
        expect{ str.two_sum }.to raise_error(NoMethodError)
      end
    end

    context "when an array is empty" do 
      it "returns an empty array" do
        expect(arr.two_sum).to be_empty
      end
    end

    it "returns a 2D array with all pairs of positions where the elements at those positions sum to zero" do
      arr = [-1, 0, 2, -2, 1]
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
      expect(arr.two_sum).to_not eq([[2, 3], [0, 4]])
    end
  end

  describe "#my_transpose" do
    context "when it's not an array" do
        it "raises error" do
          str = String.new
          expect{ str.my_transpose }.to raise_error(NoMethodError)
        end
    end

    context "when an array is empty" do 
      it "returns an empty array" do
        expect(arr.my_transpose).to be_empty
      end
    end

    context "when the array is row-oriented" do 
      it "returns the column-oriented array" do
        arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
        expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
      end
    end

    context "when the array is column-oriented" do
      it "returns the row-oriented array" do
        arr = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
        expect(arr.my_transpose).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8]])
      end
    end
  end 

  describe "#stock_picker" do
    context "when it's not an array" do
      it "raises error" do
        str = String.new
        expect{ str.my_transpose }.to raise_error(NoMethodError)
      end
    end

    context "when an array is empty" do 
      it "returns an empty array" do
        expect(arr.my_transpose).to be_empty
      end
    end

    it "returns the most profitable pair of days on which to first buy the stock and then sell the stock" do
      arr = [3, 10, 1, 8, 2, 5]
      expect(arr.stock_picker).to eq([1, 2])
    end
  end

end


