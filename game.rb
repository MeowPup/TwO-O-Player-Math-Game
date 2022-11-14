require './players'
require './questions'

class Game
  
  # create the players
  def initialize(name)
    @name = name
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end


    



end

