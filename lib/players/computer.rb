module Players
  class Computer < Player

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

    CORNERS = [0,2,6,8]

    def move(board)
      case
      when winning_move != nil
        next_input = winning_move + 1
      when block != nil
        next_input = block + 1
      when center?
        next_input = 5
      when opposite_corner != nil && board.taken?(opposite_corner) == false
        next_input = corner + 1
      else
        until !board.taken?(next_input)
          next_input = (1..9).to_a.sample
        end
      end
      sleep(1)
      next_input.to_s
    end

    def other
      token == "X" ? "O" : "X"
    end

    def winning_move
      winning_row =  WIN_COMBINATIONS.find do |combo|
        (board.cells[combo[0]] == token && board.cells[combo[1]] == token && board.cells[combo[2] == " ")]) ||
          (board.cells[combo[2]] == token && board.cells[combo[1]] == token && board.cells[combo[0]] == " ") ||
          (board.cells[combo[0]] == token && board.cells[combo[2]] == token && board.celss[combo[1]] == " ")
      end
      if winning_row != nill
        winning_cell = winning_row.find { |cell| board.cells[cell] == " " }
      end
    end

    def blocker
      winning_row = WIN_COMBINATIONS.find do |combo|
        (board.cells[combo[0]] == other && board.cells[combo[1]] == other && board.cells[combo[2]] == " ") ||
          (board.cells[combo[0]] == other && board.cells[combo[2]] == other && board.cells[combo[1]] == " ") ||
          (board.cells[combo[1]] == other && board.cells[combo[2]] == other && board.cells[combo[0]] == " ")
      end
      if winning_row != nil
        winning_cell = winning_row.find { |cell| board.cells[cell] == " " }
      end
    end

    def center?
      board.cells[4] = " "
    end

    def corners 
      CORNERS.shuffle!
    end

    def opposite_corner
      case 
      when board.taken?(1) && !board.taken?(9)
        9
      when board.taken?(9) && !board.taken?(1)
        1
      when board.taken?(3) && !board.taken?(7)
        7
      when board.taken?(7) && !board.taken(3)
        3
      else
        nil
      end
    end
  end
end
    
  
      # else board.cells.each_with_index do |cell, index|
      #   if cell == " "
      #     sleep(1)

      #     return index + 1
