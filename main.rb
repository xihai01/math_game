require './game'

p1 = Player.new('Player 1', 3)
p2 = Player.new('Player 2', 3)
game = Game.new(p1, p2)
game.start_game