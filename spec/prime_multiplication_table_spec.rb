require_relative "./spec_helper.rb"

RSpec.describe PrimeMultiplicationTable do
  describe "#generate" do
    it "returns a matrix" do
      expect(PrimeMultiplicationTable.new.generate([1, 2, 3])).to be_instance_of(Matrix)
    end

    context "given an array of [1, 2, 3] will return a matrix" do
      let(:matrix) {
        PrimeMultiplicationTable.new.generate([1, 2, 3])
      }

      it "that has 4 rows" do
        expect(matrix.row_count).to eq(4)
      end

      it "with first row [0, 1, 2, 3]" do
        expect(matrix.row(0).to_a).to eq([0, 1, 2, 3])
      end

      it "with second row [1, 1, 2, 3]" do
        expect(matrix.row(1).to_a).to eq([1, 1, 2, 3])
      end

      it "with third row [2, 2, 4, 6]" do
        expect(matrix.row(2).to_a).to eq([2, 2, 4, 6])
      end

      it "with fourth row [2, 2, 4, 6]" do
        expect(matrix.row(3).to_a).to eq([3, 3, 6, 9])
      end
    end
  end
end
