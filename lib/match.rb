require "./lib/create_grid"

class Match
  def initialize
    @match = CreateGrid.new
  end

  def make_choice(player)
    choice = gets.chomp.downcase
    if %w[a1 a2 a3 b1 b2 b3 c1 c2 c3].include?(choice)
      if @match.is_occupied?(choice)
        print "This position is taken."
        print "Please enter a valid position: "
        make_choice(player)
      else
        @match.send("#{choice}=", player)
      end
    else
      print "Please enter a valid position: "
      make_choice(player)
    end
    @match.board
  end

  def p1_choice
    make_choice("X")
  end

  def p2_choice
    make_choice("O")
  end
end

round = Match.new
print "Player 1 chooses position: "
round.p1_choice
print "Player 2 chooses position: "
round.p2_choice
print "Player 1 chooses position: "
round.p1_choice
print "Player 2 chooses position: "
round.p2_choice
print "Player 1 chooses position: "
round.p1_choice
print "Player 2 chooses position: "
round.p2_choice
print "Player 1 chooses position: "
round.p1_choice
print "Player 2 chooses position: "
round.p2_choice
print "Player 1 chooses position: "
round.p1_choice
