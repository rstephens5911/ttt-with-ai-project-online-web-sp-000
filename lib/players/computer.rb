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
      if board.position("5") == " "
        "5"
        


        
      # else board.cells.each_with_index do |cell, index|
      #   if cell == " "
      #     sleep(1)
      #     return index + 1
      #   end
      end
    end
  end
 end
end
