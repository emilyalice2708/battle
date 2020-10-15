require 'game'

describe Game do
    let(:player_1) { double :player }
    let(:player_2) { double :player }
    let(:game) { described_class.new(player_1, player_2) }
  
  describe '#new' do
    it 'has a player_1' do
        expect(game.player_1).to eq(player_1)
    end

    it 'has a player_2' do
        expect(game.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    it 'damages other player' do
      expect(player_2).to receive(:injured)
      game.attack(player_2)    
    end
  end

  describe '#current_turn' do
      it 'defaults as player_1' do
          expect(game.current_turn).to eq(player_1)
      end
  end

  describe '#switch_turn' do
      it 'switches turn' do
          game.switch_turn
          expect(game.current_turn).to eq(player_2)
      end
  end
end