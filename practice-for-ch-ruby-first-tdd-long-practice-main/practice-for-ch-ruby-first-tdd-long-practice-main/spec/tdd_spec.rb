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

  describe 

end
