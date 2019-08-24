class Game
  attr_accessor :board, :player_1, :player_2

  WIN_COMBINATIONS = [
    [0,1,2],  # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom rom
    #-----
    [0,3,6],  # Col. 1
    [1,4,7],  # Col. 2
    [2,5,8],  # Col. 3
    #-----
    [0,4,8],  # L to R diagonal
    [2,4,6]   # R to L diagonal
  ]

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
      @board = board
    @player_1 = player_1
    @player_2 = player_2

  end

  def current_player
    @board.turn_count % 2 == 0 ? player_1 : player_2
  end

end
