require 'player'

describe Player do
  subject(:Mario) { described_class.new("Mario") }
    describe '#name' do
      it "returns it's name" do
        expect(subject.name).to eq("Mario")
      end
    end
end