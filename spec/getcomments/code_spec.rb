require 'spec_helper'

describe Code do
  let(:code) { File.read 'spec/fixtures/basic.rb' }
  let(:subject) { described_class.new code }

  describe "#comments" do
    let(:result) { subject.comments }

    it "returns a hash" do
      expect(result).to be_a Hash
    end

    it "respects indented comments" do
      expect(result['def some_method']).to match(/  With indented example/)
    end

    it "captures comments for module" do
      expect(result['module TestModule']).to eq "Module comment"
    end

    it "captures comments for class" do
      expect(result['class TestClass']).to eq "Class comment"
    end

    it "captures comments for def" do
      expect(result['def another_method']).to eq "Method comment"
    end

    it "captures comments for attr accessors" do
      expect(result['attr_reader :some_attr']).to eq "Attribute comment"
    end

    it "captures floating comments" do
      expect(result['comment_1']).to eq "Floating comment"
      expect(result['comment_2']).to eq "Another floating comment"
    end

    it "captures end of file comments" do
      expect(result['comment_3']).to eq "EOF comment"
    end
  end
end
