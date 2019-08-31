module Players
  class Computer < Player

    def move(board)
      if board.position("5") == " "
        "5"
      elsif board.position("0") == " "
        "0"
      elsif board.position("2") == " "
        "2"
      elsif board.position("6") == " "
        "6"
      elsif board.position("8") == " "
        "8"
      end

      # else board.cells.each_with_index do |cell, index|
      #   if cell == " "
      #     sleep(1)
      #     return index + 1
      #   end
      end
    end
  end
 end
