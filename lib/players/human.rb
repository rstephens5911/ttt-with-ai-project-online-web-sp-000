module Players
  class Human < Player

    def move(user_input)
      puts "choose a position (1-9):"
      user_input = gets.chomp
    end

  end
end
