require_relative 'circles'

class Player
  include Circles

  attr_accessor :name, :circle 
  
  @@players_count = 0

  def initialize(name)
    if @@players_count == 0 
      @name = name
      @circle = yellow_circle
    elsif @@players_count == 1 
      @name = name
      @circle = red_circle
    else
      raise "Only two players can be created"
    end

    @@players_count += 1
  end
end