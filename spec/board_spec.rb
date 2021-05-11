require_relative '../lib/board'

RSpec.describe 'Board' do
  let(:board) { Board.new }
  describe '#board_game' do
    it 'Return the game board' do
      expect(board.board_game).to eq([%w[1 2 3], %w[4 5 6], %w[7 8 9]])
    end
  end
  describe '#replace?' do
    context 'When replacement succeeds' do
      it 'Board was updated' do
        expect(board.replace?(1, 'X')).to be(true)
      end
      it 'Checks new board' do
        board.replace?(1, 'X')
        expect(board.board_game).to eq([%w[X 2 3], %w[4 5 6], %w[7 8 9]])
      end
    end
    context 'Replacement fails' do
      it 'Board was not updated' do
        board.replace?(1, 'X')
        expect(board.replace?(1, 'X')).to be(false)
      end
      it 'Checks board remains the same' do
        board.replace?(1, 'X')
        board.replace?(1, '0')
        expect(board.board_game).to eq([%w[X 2 3], %w[4 5 6], %w[7 8 9]])
      end
    end
  end
  describe '#draw?' do
    context 'When there were 9 moves' do
      it 'Should be Draw' do
        9.times do |i|
          board.replace?(i + 1, 'X')
        end
        expect(board.draw?).to be(true)
      end
    end
    context 'When there were less than 9 moves' do
      it 'Should not be draw' do
        5.times do |i|
          board.replace?(i + 1, 'X')
        end
        expect(board.draw?).to be(false)
      end
    end
  end
end
