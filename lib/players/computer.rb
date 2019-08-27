module Players
  class Computer < Player

    def move(board)
      "1" if !board.taken?
    else "3" if !board.taken?
    end

  end
end
