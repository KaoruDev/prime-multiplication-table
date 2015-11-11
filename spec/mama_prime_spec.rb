require_relative "./spec_helper.rb"

RSpec.describe MamaPrime do
  describe "#birth" do
    let(:mama) { MamaPrime.new }

    it "will return an array" do
      result = mama.birth
      expect(result).to be_instance_of(Array)
    end

    context "when passed 3" do
      it "will return first 3 prime numbers" do
        Prime.first(3).each do |prime|
          expect(mama.birth(3)).to include(prime)
        end
      end
    end
  end

  describe "#find_next_prime" do
    context "when marker is 2" do
      it "will return 2" do
        expect(MamaPrime.new(2).find_next_prime).to eq(2)
      end
    end

    context "when marker is 4" do
      it "will return 5" do
        expect(MamaPrime.new(4).find_next_prime).to eq(5)
      end
    end
  end
end

