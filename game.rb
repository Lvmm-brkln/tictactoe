# This program sets the entire tictactoe's behaviour. 
# How do the different methods interract with each other.
# And how the program runs.
load 'board.rb'
load 'boardcase.rb'
load 'player.rb'

# Define the main Class called Game
class Game
  attr_accessor :player_1, :player_2, :board

  def initialize
      puts "Name Player 1:"
      print ">"
    @player_1 = Player.new(gets.chomp, "x")
      puts "Name Player 2:"
      print ">"
    @player_2 = Player.new(gets.chomp, "o")
    @board    = Board.new
  end


# Define if the player can choose or not a case to play on.
  def check_if_empty(player)
    @entry = gets.chomp
    if @board.boardcase.keys.include?(@entry)
      test = @board.boardcase[@entry].shape
        if test == "x" || test == "o"
          puts "Invalid!"
          check_if_empty(player)
        else
          @board.boardcase[@entry].shape = player.shape
        end
    else
        puts "Try again!"
        print ">"
      check_if_empty(player)
    end
  end


# Define the general method of a game
    def play
      @board.print_board
      9.times do |turns|
        if turn
          break
        end
      end
    end


# Define how does a turn runs.
  def turn
    puts "#{@player_1.name}'s turn."
    puts "Choose your case:"
    print ">"
  check_if_empty(@player_1)
  if win
    @board.print_board
    return true
  end
  @board.print_board
    puts "#{@player_2.name}'s turn."
    puts "Choose your case:"
    print ">"
  check_if_empty(@player_2)
  if win
    @board.print_board
    return true
  end
  @board.print_board
  end


# Define the conditions to end the game(a player or the other wins//Draw).
  def win
    table_keys = @board.boardcase.values
    if @board.boardcase["a1"].shape == @board.boardcase["a2"].shape && @board.boardcase["a3"].shape == "x" && @board.boardcase["a2"].shape == "x" ||
       @board.boardcase["a1"].shape == @board.boardcase["b1"].shape && @board.boardcase["c1"].shape == "x" && @board.boardcase["b1"].shape == "x" ||
       @board.boardcase["a2"].shape == @board.boardcase["b2"].shape && @board.boardcase["c2"].shape == "x" && @board.boardcase["b2"].shape == "x" ||
       @board.boardcase["a3"].shape == @board.boardcase["b3"].shape && @board.boardcase["c3"].shape == "x" && @board.boardcase["b3"].shape == "x" ||
       @board.boardcase["b1"].shape == @board.boardcase["b2"].shape && @board.boardcase["b3"].shape == "x" && @board.boardcase["b2"].shape == "x" ||
       @board.boardcase["c1"].shape == @board.boardcase["c2"].shape && @board.boardcase["c3"].shape == "x" && @board.boardcase["c2"].shape == "x" ||
       @board.boardcase["a1"].shape == @board.boardcase["b2"].shape && @board.boardcase["c3"].shape == "x" && @board.boardcase["b2"].shape == "x" ||
       @board.boardcase["a3"].shape == @board.boardcase["b2"].shape && @board.boardcase["c1"].shape == "x" && @board.boardcase["b2"].shape == "x"
       puts "#{@player_1.name} Won!"
    return true
  elsif
       @board.boardcase["a1"].shape == @board.boardcase["a2"].shape && @board.boardcase["a3"].shape == "o" && @board.boardcase["a2"].shape == "o" ||
       @board.boardcase["a1"].shape == @board.boardcase["b1"].shape && @board.boardcase["c1"].shape == "o" && @board.boardcase["b1"].shape == "o" ||
       @board.boardcase["a2"].shape == @board.boardcase["b2"].shape && @board.boardcase["c2"].shape == "o" && @board.boardcase["b2"].shape == "o" ||
       @board.boardcase["a3"].shape == @board.boardcase["b3"].shape && @board.boardcase["c3"].shape == "o" && @board.boardcase["b3"].shape == "o" ||
       @board.boardcase["b1"].shape == @board.boardcase["b2"].shape && @board.boardcase["b3"].shape == "o" && @board.boardcase["b2"].shape == "o" ||
       @board.boardcase["c1"].shape == @board.boardcase["c2"].shape && @board.boardcase["c3"].shape == "o" && @board.boardcase["c2"].shape == "o" ||
       @board.boardcase["a1"].shape == @board.boardcase["b2"].shape && @board.boardcase["c3"].shape == "o" && @board.boardcase["b2"].shape == "o" ||
       @board.boardcase["a3"].shape == @board.boardcase["b2"].shape && @board.boardcase["c1"].shape == "o" && @board.boardcase["b2"].shape == "o"
       puts "#{@player_2.name} Won!"
    return true
else
  i = 0
  table_keys.each do |u|
    if u.shape != " "
      i += 1
    end
  end
    if i == 9
      puts "It's a Draw!"
      return true
    end
  end
end
end


# Ask to run the program and ask f the player want to play again.
# If yes, the game starts again.
loop do
game_1 = Game.new
game_1.play
puts "Play again? yes/no"
break if gets.chomp == "no"
end
