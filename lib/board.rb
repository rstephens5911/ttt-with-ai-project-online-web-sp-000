class Board
  attr_accessor :board, :cells



  def initialize
    @board = board
    @cells =  [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def reset!
      @cells =  [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts " -----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts " -----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    cell = @cells[input.to_i - 1]
  end

  def full?
    cells.all? do |index|
      if index == "X" || index == "O"
        true
      else
        false
      end
    end
  end

  def turn_count
    count = 0
    cells.each do |cell|
      if (cell == "X" || cell == "O")
        count +=1
      end
    end
    count
  end

  def taken?(position)
    if (cells[position.to_i - 1] == "X" || cells[position.to_i - 1] == "O")
      true
    else
      false
    end
  end

  def valid_move?(user_input)
    user_input = user_input.to_i
    if (user_input > 0 && user_input < 10 && !taken?(user_input))
      true
    end
  end

  def update(input, token)
    if turn_count % 2 == 0
      token = "X"
    else
      token = "O"
    end
    @cells[input.to_i - 1] = token
  end

end
