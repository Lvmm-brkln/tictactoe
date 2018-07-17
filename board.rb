class Board
  attr_accessor :boardcase

  def initialize

    @boardcase = {
                  "a1" => Boardcase.new, "a2" => Boardcase.new, "a3" => Boardcase.new,
                  "b1" => Boardcase.new, "b2" => Boardcase.new, "b3" => Boardcase.new,
                  "c1" => Boardcase.new, "c2" => Boardcase.new, "c3" => Boardcase.new
                }

  end

  def print_board

    puts " ___________ ".rjust(20)
    puts "| #{@boardcase["a1"].shape} | #{@boardcase["a2"].shape} | #{@boardcase["a3"].shape} |".rjust(20)
    puts "|___________|".rjust(20)
    puts "| #{@boardcase["b1"].shape} | #{@boardcase["b2"].shape} | #{@boardcase["b3"].shape} |".rjust(20)
    puts "|___________|".rjust(20)
    puts "| #{@boardcase["c1"].shape} | #{@boardcase["c2"].shape} | #{@boardcase["c3"].shape} |".rjust(20)
    puts "|___________|".rjust(20)
  end



end
