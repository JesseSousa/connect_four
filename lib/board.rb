require_relative 'circles'

class Board 
  include Circles;

  attr_reader :board

  def initialize
    @board = create_board
  end

  private 

  def create_board
    Array.new(7, Array.new(6, empty_circle))
  end
end