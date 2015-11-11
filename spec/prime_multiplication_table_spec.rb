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

      it "with first row [0, 1, 2, 3]" do
        expect(matrix.row(0)).to eq([0, 1, 2, 3])
      end
    end
  end
end
