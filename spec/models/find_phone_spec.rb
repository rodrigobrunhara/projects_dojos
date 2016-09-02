require "spec_helper"

describe "FindPhone" do
  let(:phone) { "1AAA-BBB" }
  let(:subject) { FindPhone.new }
  let(:object) { double('object') }
  let(:object1) { double('object1') }

  describe "#validate_char?" do
    context "when the text is valid " do
      it "Returns true" do
        expect(subject.validate_char?(phone)).to eq(true)
      end
    end

    context "When the text is invalid" do
      let(:phone) { "" }
      it "Returns false" do
        expect(subject.validate_char?(phone)).to eq(false)
      end
    end
  end
end