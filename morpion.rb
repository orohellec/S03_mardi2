class Board
  attr_accessor :board
  def initialize
    @case_1 = BoardCase.new
    @case_2 = BoardCase.new
    @case_3 = BoardCase.new
    @case_4 = BoardCase.new
    @case_5 = BoardCase.new
    @case_6 = BoardCase.new
    @case_7 = BoardCase.new
    @case_8 = BoardCase.new
    @case_9 = BoardCase.new
  end
end

class BoardCase
  def initialize
    @case = "."
  end
end

class Player
  attr_accessor :player
  def initialize(player)
    @name = player
  end
  def first_name
    return @name
  end
end

class Game
  def initialize
    puts "Bienvenue dans le jeu du morpion\n\n"

    print "Player_1, entrez votre prénom > "
    player_1 = gets.chomp
    @player_1 = Player.new(player_1)
    print "Player_2, entrez votre prénom > "
    player_2 = gets.chomp
    @player_2 = Player.new(player_2)
    puts "\n#{@player_1.first_name} VS #{@player_2.first_name}"
    puts ""
    puts "#{@player_1.first_name} play first"
    @board = Board.new
  end
end

game = Game.new
#game.print_players_name
