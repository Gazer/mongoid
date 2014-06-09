require "spec_helper"

describe Mongoid::Matchers::Nin do

  let(:matcher) { Mongoid::Matchers::Nin.new("first") }

  describe "#matches?" do

    context "when the values do not contain the attribute" do

      it "returns true" do
        matcher.matches?("$nin" => ["second", "third"]).should be_truthy
      end

    end

    context "when the values contain the attribute" do

      it "returns false" do
        matcher.matches?("$nin" => ["first"]).should be false
      end

    end

  end

end
