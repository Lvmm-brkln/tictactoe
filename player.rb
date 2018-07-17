# Defines the player class and the shapes that are used for each player's turn.

class Player
  attr_accessor :name, :shape

  def initialize(name, shape)

    @name  = name
    @shape = shape

  end
end
