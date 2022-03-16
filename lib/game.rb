require_relative 'board'
require_relative 'circles'

class Game
  def initialize(players = [])
    @players = players
  end
end