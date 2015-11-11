require_relative "./spec_helper.rb"

RSpec.describe MamaPrime do
  describe "#birth" do
    let(:mama) { MamaPrime.new }
    it "will return an array" do
      result = mama.birth
      expect(result).to be_instance_of(Array)
    end
  end
end

