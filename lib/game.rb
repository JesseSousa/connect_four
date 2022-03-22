require_relative 'board'
require_relative 'circles'
require_relative 'player'

class Game
  attr_reader :players

  def initialize(players = [])
    @players = players
  end

  def start 
    loop do
      if players.size == 0
        puts 'What is the name of the first player?'
        name = gets.chomp
        redo unless add_new_player(name)
      elsif players.size == 1
        puts 'What is the name of the second player?'
        name = gets.chomp
        redo unless add_new_player(name)
      end
    end
  end

  def verify_name(name)
    name.size > 0
  end

  def add_new_player(name)
    return false unless @players.size < 2

    new_player = Player.new(name)

    if verify_name(name)
      @players << new_player
      return true
    end

    false
  end
end