require 'spec_helper'

describe GetComments do
  subject { described_class }

  describe "::from_file" do
    let(:filename) { 'spec/fixtures/minimal.rb' }

    it "returns comments from the file" do
      comments = subject.from_file filename
      expect(comments["module TestModule"]).to eq "Module comment"
    end
  end

  describe "::from_string" do
    let(:code) { "# the comment\ndef function\n" }

    it "returns comments from the string" do
      comments = subject.from_string code
      expect(comments["def function"]).to eq "the comment"
    end
  end
end
