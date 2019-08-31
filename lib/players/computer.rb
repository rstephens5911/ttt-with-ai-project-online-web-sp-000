module Players
  class Computer < Player

    def move(board)
      if board.position("5") == " "
        return "5"
      elsif board.position("0") == " "
          return "0"
      elsif board.position("2") == " "
        return "2"
      elsif board.position("6") == " "
          return "6"
      elsif board.position("8") == " "
          return "8"
      end
    end
  end
end

      # else board.cells.each_with_index do |cell, index|
      #   if cell == " "
      #     sleep(1)
      #     return index + 1
