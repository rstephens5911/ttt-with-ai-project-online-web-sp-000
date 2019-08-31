module Players
  class Computer < Player

    def move(board)
      if board.position("5") == " "
        return "5"
      else
        case 
        when board.taken?(1) && !board.take?(9)
          9
        when board.taken?(9) && !board.taken?(1)
          1
        when board.taken?(7) && !board.taken(3)
          3
        when board.taken?(3) && !board.taken(7)
          7
        end
      end
    end
  end
end
      # else board.cells.each_with_index do |cell, index|
      #   if cell == " "
      #     sleep(1)

      #     return index + 1
