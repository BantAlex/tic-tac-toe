require "./lib/create_grid"
require "./lib/match"

class Game
  def initialize
    round = Match.new
    until round.win_condition("X") || round.win_condition("O")
      print "Player 1 chooses position: "
      round.p1_choice
      round.win_check("X")
      print "Player 2 chooses position: "
      round.p2_choice
      round.win_check("O")
    end
  end
end

play = Game.new
