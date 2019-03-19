require 'rspec'

RSpec.describe "RSpec Mocks: Receive Counts" do
  context "given a class definition with a method" do
    class SomeClass
      def some_method
      end
    end

    it "allows writing .exactly(1).time" do
      expect {
        expect(SomeClass).to receive(:some_method).exactly(1).time#s

        SomeClass.some_method
      }.not_to raise_exception
    end

    it "allows writing .at_least(1).time" do
      expect {
        expect(SomeClass).to receive(:some_method).at_least(1).time#s

        SomeClass.some_method
      }.not_to raise_exception
    end

    it "allows writing .at_most(1).time" do
      expect {
        expect(SomeClass).to receive(:some_method).at_most(1).time#s

        SomeClass.some_method
      }.not_to raise_exception
    end
  end
end
