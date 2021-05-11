require_relative '../lib/solutions'
require_relative '../lib/board'

RSpec.describe 'Solutions' do
  let(:board) { Board.new }
  describe '#method_check' do
    it 'Win game with 1 row' do
      arr = [1, 2, 3]
      expect(board.method_check(arr)).to be(true)
    end
    it 'Win game with 1 column' do
      arr = [1, 4, 7]
      expect(board.method_check(arr)).to be(true)
    end
    it 'Win game with diagonal' do
      arr = [1, 5, 9]
      expect(board.method_check(arr)).to be(true)
    end
    it 'Won´t win game' do
      arr = [1, 5, 7]
      expect(board.method_check(arr)).to be(false)
    end
  end
end
