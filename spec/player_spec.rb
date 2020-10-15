require 'player'

describe Player do
  subject(:mario) { described_class.new("Mario") }
  subject(:luigi) { described_class.new("Luigi") }

    describe '#name' do
      it "returns it's name" do
        expect(mario.name).to eq("Mario")
      end
    end

    describe '#points' do
      it 'returns HP' do
        expect(mario.points).to eq(Player::INITIAL_HP)
      end
    end

    describe '#injured' do
      it 'reduces HP points by 10' do
        expect { luigi.injured }.to change { luigi.points }.by(-10)
      end
    end
end