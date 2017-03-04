require 'spec_helper'

describe Read do
  let(:subject) { described_class.new 'spec/fixtures/basic.rb' }

  describe "::from" do
    it "calls #get on a new instance" do
      expect_any_instance_of(Read).to receive :get
      Read.from 'spec/fixtures/basic.rb'
    end
  end
  
  describe "#get" do
    let(:result) { subject.get }

    it "returns a hash" do
      expect(result).to be_a Hash
    end

    it "respects indented comments" do
      expect(result['def some_method']).to match(/  With indented example/)
    end

    it "captures comments for module" do
      expect(result['module TestModule']).to be_a String
    end

    it "captures comments for class" do
      expect(result['class TestClass']).to be_a String
    end

    it "captures comments for def" do
      expect(result['def some_method']).to be_a String
    end

    it "captures comments for attr accessors" do
      expect(result['attr_reader :some_attr']).to be_a String
    end
  end
end
