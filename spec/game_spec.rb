require_relative '../lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  describe '#add_new_player' do
    context 'when it has no players' do
      it 'adds first player' do
        player_name = 'Francis'
        expect(game.add_new_player(player_name)).to be_truthy  
      end
    end

    context 'when it has only one player' do
      before do
        player_name = 'Francis'
        game.add_new_player(player_name)
      end

      it 'adds second player' do
        player_name = 'Bob'
        expect(game.add_new_player(player_name)).to be_truthy
      end
    end

    context 'when trying to add third player' do
      before do
        player_one = 'Francis'
        game.add_new_player(player_one)
        player_two = 'Bob'
        game.add_new_player(player_two)
      end

      it 'does not add new player' do
        player_name = 'John'
        expect(game.add_new_player(player_name)).to be_falsy
      end
    end
  end

  describe '#verify_name' do
    context 'when name is invalid' do
      it 'returns false' do
        user_input = ''
        verified_name = game.verify_name(user_input)
        expect(verified_name).to be_falsy
      end
    end
  end
end