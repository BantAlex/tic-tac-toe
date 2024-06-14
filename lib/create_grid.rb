class CreateGrid
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :grid_positions

  def initialize
    puts "Welcome to tic-tac-toe!"
    puts ""
    puts "Player 1(X) goes first."
    puts ""
    clear_board
  end

  def clear_board
    self.a1 = self.a2 = self.a3 = self.b1 = self.b2 = self.b3 = self.c1 = self.c2 = self.c3 = " "
    board
  end

  def is_occupied?(position)
    send(position) != " "
  end

  def board
    puts "    A   B   C"
    puts "  |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|"
    puts "1 | #{a1} | #{b1} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "2 | #{a2} | #{b2} | #{c2} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "3 | #{a3} | #{b3} | #{c3} |"
    puts "  |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
    @grid_positions = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
  end
end
