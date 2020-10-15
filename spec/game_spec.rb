require 'game'

describe Game do
    let(:game) { described_class.new }
    let(:player_1) { double :player }
    let(:player_2) { double :player }

  describe '#attack' do
    it 'damages other player' do
      expect(player_2).to receive(:injured)
      game.attack(player_2)    
    end
  end
end