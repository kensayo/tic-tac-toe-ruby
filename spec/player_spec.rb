require_relative '../lib/player'

RSpec.describe 'Player' do
  let(:player) { Player.new('Test') }
  describe '#add_input' do
    it 'Add number in player´s array' do
      player.add_input(5)
      expect(player.player_input).to eq([5])
    end
  end
  describe '#initialize' do
    it 'Player´s name' do
      expect(player.player).to eq('Test')
    end
  end
end
