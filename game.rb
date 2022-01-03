# Player class stores info about each player
class Player
  attr_reader :curr_life

  def initialize(name, max_life)
    @name = name
    @max_life = max_life
    @curr_life = max_life
  end

  def set_num_of_life
    @curr_life -= 1
  end
end

# Game class manages the current state of game
class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game
    while new_game? do
      puts 'hi'
      @player1.set_num_of_life
    end
  end

  def new_game?
    if @player1.curr_life === 0 || @player2.curr_life == 0
      return false
    end
    return true
  end
end

p1 = Player.new('Player 1', 3)
p2 = Player.new('Player 2', 3)
game = Game.new(p1, p2)
game.start_game