require "./lib/create_grid"

class Match
  def initialize
    @match = CreateGrid.new
    print "Choose bitch: "
  end

  def p1_choice
    choice = gets.chomp
    case choice
    when "a1"
      @match.a1 = "X"
    when "a2"
      @match.a2 = "X"
    when "a3"
      @match.a3 = "X"
    when "b1"
      @match.b1 = "X"
    when "b2"
      @match.b2 = "X"
    when "b3"
      @match.b3 = "X"
    when "c1"
      @match.c1 = "X"
    when "c2"
      @match.c2 = "X"
    when "c3"
      @match.c3 = "X"
    else
      print "Please enter a valid option: "
      p1_choice
    end
    @match.board
  end
end

round = Match.new
round.p1_choice
