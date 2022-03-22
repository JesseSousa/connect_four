require_relative '../lib/player'

describe Player do
  context 'when initializing first player' do
    subject(:player_one) { described_class.new('Jesse') }

    it 'has a yellow circle' do
      expect(player_one.circle).to eq("\e[33m\u25cf\e[0m") 
    end
  end

  context 'when initializing second player' do
    subject(:player_two) { described_class.new('James') }

    it 'has a red circle' do
      expect(player_two.circle).to eq("\e[31m\u25cf\e[0m")
    end
  end

end 