
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

  def won?
    WIN_COMBINATIONS.detect do |element|
      @board.cells[element[0]] == @board.cells[element[1]] &&
      @board.cells[element[1]] == @board.cells[element[2]] &&
      (@board.cells[element[0]] == "X" || @board.cells[element[0]] == "O")
    end
  end

  def draw?
    !won? && @board.full?
  end

  def over?
    draw? || won?
  end

  def winner
    @board.cells[won?[0]] if won?
  end

  def turn
    puts "select a space: (1-9)"
    move = current_player.move(@board)
    if board.valid_move?(move)
      board.update(move, current_player)
      board.display
    else
      turn
    end
  end

  def play
    until over?
      turn
    end
    if draw?
      puts "Cat's Game!"
    elsif won?
      puts "Congratulations #{winner}!"
    end
  end

end
