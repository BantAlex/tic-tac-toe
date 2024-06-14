require "./lib/create_grid"
require "./lib/match"

class Game
  def initialize
    round = Match.new
    4.times do
      print "Player 1 chooses position: "
      round.p1_choice
      round.win_check
      print "Player 2 chooses position: "
      round.p2_choice
      round.win_check
    end
    print "Player 2 chooses position: "
    round.p2_choice
    round.win_check

    puts "It's a draw!"
    round.replay?
  end
end

play = Game.new
