require "spec_helper"

describe "FindPhone" do
  let(:phone) { "1AAA-BBB" }
  let(:subject) { FindPhone.new }

  describe "#validate_char?" do
    context "when the text is valid" do
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

  describe "#convert_to_number" do
    context "When the phone is passed string and converted" do
      it "Returns strint number converted" do
        expect(subject.convert_to_number(phone)).to eq("1222-222")
      end
    end
  end
end