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
        puts ""
        puts "This position is taken."
        puts "Please enter a valid position: "
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

  def win_condition(player)
    @winning_groups = [
      [@match.a1, @match.a2, @match.a3], [@match.b1, @match.b2, @match.b3], [@match.c1, @match.c2, @match.c3],
      [@match.a1, @match.b1, @match.c1], [@match.a2, @match.b2, @match.c2], [@match.a3, @match.b3, @match.c3],
      [@match.a1, @match.b2, @match.c3], [@match.a3, @match.b2, @match.c1]
    ]
    if @match.grid_positions.all? { |pos| %w[X O].include?(pos) }
      puts "It's a draw!"
      replay?
    end
    @winning_groups.any? { |group| group.uniq.length == 1 && group[0] == player }
  end

  def win_check(player)
    return unless win_condition(player)

    puts "#{player} Wins!"
    replay?
  end

  def replay?
    print "Would you like to play again?(y/n): "
    ans = gets.chomp.downcase
    if ans == "y"
      @match.clear_board
    elsif ans == "n"
      puts "Have a nice day!"
      exit
    else
      puts "That's not a valid option."
      replay?
    end
  end
end
