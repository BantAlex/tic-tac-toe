class CreateGrid
  attr_reader :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  @@a1 = "X"
  @@a2 = "X"
  @@a3 = "X"
  @@b1 = "X"
  @@b2 = "X"
  @@b3 = "X"
  @@c1 = "X"
  @@c2 = "X"
  @@c3 = "X"
  def initialize
    puts "   A  B  C"
    puts "1  #{@@a1}  #{@@b1}  #{@@c1}"
    puts "2  #{@@a2}  #{@@b2}  #{@@c2}"
    puts "3  #{@@a3}  #{@@b3}  #{@@c3}"
    puts ""
  end
end
