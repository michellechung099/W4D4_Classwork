require 'rspec'
require 'tdd'

describe Array do
  describe "#uniq" do
    subject(:array) { [1, 2, 1, 3, 3] }

    context "removes duplicate elements" do
      it "can't have same element more than once" do
        expect(uniq(array)).to eq(array.uniq)
      end

      it "does not modify the original array" do
        duplicate_array = array.dup
        uniq(array)

        expect(array).to eq(duplicate_array)
      end
    end
  end

  describe "#two_sum" do
    subject (:array) {[-1, 0, 2, -2, 1]}

    context "it returns of positions of pairs of elements that sum to zero" do
      it "finds multiple pairs" do
        expect(two_sum(array)).to eq([[0, 4], [2, 3]])
      end

      it "finds non-distinct pairs with the same element" do
        expect(two_sum([6,-6,-6])).to eq([[0, 1], [0, 2]])
      end

      it "returns empty array when there is no pair" do
        expect(two_sum([3,4])).to eq ([])
      end
    end

    context "it sorts the pairs with the smaller index before the bigger index" do
      it "raise an error when bigger index comes before the smaller index" do
        expect(two_sum(array)).not_to eq([[2, 0], [0, 2]])
      end
    end
  end

  describe '#my_transpose' do
    subject(:array) {[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]}

    it "returns a transposed array" do
      expect(my_transpose(array)).to eq(array.transpose)
    end
  end

  describe '#stock_picker' do
    subject(:array) { [1, 2, 3, 4] }

    context "should return a pair of most profitable days" do
      it "returns an array in a pair" do
        expect(stock_picker(array)).to eq([[0,3]])
      end

      it "the difference of the prices at the index of the pair returns most profit" do
        expect(stock_picker([4,5,13,1])).to eq([[2,3]])
      end
    end

    context "when there is no profit" do
      it "should return an empty array" do
        expect(stock_picker([1,1,1,1])).to eq([])
      end
    end
  end
end

