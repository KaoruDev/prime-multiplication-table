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
        result = mama.birth(3)

        Prime.first(3).each do |prime|
          expect(result).to include(prime)
        end
      end
    end

    context "when passed n" do
      it "will return first n prime numbers" do
        n = rand(1..100)
        result = mama.birth(n)

        Prime.first(n).each do |prime|
          expect(result).to include(prime)
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

    context "when called multiple times" do
      it "will return next prime number" do
        mama = MamaPrime.new
        expect(mama.find_next_prime).to eq(2)
        expect(mama.find_next_prime).to eq(3)
        expect(mama.find_next_prime).to eq(5)
      end
    end
  end
end

