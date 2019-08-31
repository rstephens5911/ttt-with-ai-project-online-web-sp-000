module Players
  class Computer < Player

    def move(board)
      if board.position("5") == " "
        return "5"
      elsif board.position("1") == " "
          return "0"
      elsif board.position("3") == " "
        return "3"
      elsif board.position("7") == " "
          return "7"
      elsif board.position("9") == " "
          return "9"
      end
    end
  end
end

      # else board.cells.each_with_index do |cell, index|
      #   if cell == " "
      #     sleep(1)
      #     return index + 1
