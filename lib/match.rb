require "./lib/create_grid"

class Match
  attr_accessor :winning_groups, :match

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

  def win_check(player)
    @winning_groups = [
      [@match.a1, @match.a2, @match.a3], [@match.b1, @match.b2, @match.b3], [@match.c1, @match.c2, @match.c3],
      [@match.a1, @match.b1, @match.c1], [@match.a3, @match.b2, @match.c2], [@match.a3, @match.b3, @match.c3],
      [@match.a1, @match.b2, @match.c3], [@match.a3, @match.b2, @match.c1]
    ]

    @winning_groups.any? { |group| group.uniq.length == 1 && group[0] == player }
  end
end
