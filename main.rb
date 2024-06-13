require "./lib/create_grid"
require "./lib/match"

class Game
  def initialize
    round = Match.new
    4.times do
      print "Player 1 chooses position: "
      round.p1_choice
      if round.win_check("X")
        puts "Player 1 wins!"
        @match.clear_board
      end
      print "Player 2 chooses position: "
      round.p2_choice
      if round.win_check("O")
        puts "Player 2 wins!"
        @match.clear_board
      end
    end
    print "Player 2 chooses position: "
    round.p2_choice
    return unless round.win_check("O")

    puts "Player 2 wins!"
    @match.clear_board
  end

  def replay?
  end
end

play = Game.new
