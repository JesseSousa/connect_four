require_relative '../lib/board'
require_relative '../lib/circles'

include Circles

describe Board do
  subject(:board) { described_class.new }

  describe '#create_board' do
    matcher :be_a_connect_four_board do
      match { |board| board.all? { |column| column == Array.new(6, empty_circle) }}
    end

    it 'returns a 7x6 array with empty circles' do
      expect(board.send(:create_board)).to be_a_connect_four_board
    end
  end

end