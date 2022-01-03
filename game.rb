require './player'
require './question'

# Game class manages the current state of game
class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game
    # p1 - 0, p2 - 1
    turn = 0
    player = @player1
    while true do
      # get next player
      if turn === 0
        player = @player1
        turn = 1
      else
        player = @player2
        turn = 0
      end
      # create the question
      question = Question.new()
      puts question.generate_question
      # get user input
      ans = gets.chomp.to_i
      # update lives accordingly
      if ans === question.correct_ans
        puts "#{player.name}: YES! You are correct."
      else
        puts "#{player.name}: Seriously? No!"
        player.set_num_of_life
      end

      # end game if any players have 0 lives left
      if new_game?(player) === false
        if @player1.curr_life === 0
          player = @player2
        else
          player = @player1
        end
        puts "#{player.name} wins with a score of #{player.curr_life}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        return
      end


      # scoreboard
      puts "P1: #{@player1.curr_life}/3 vs P2 #{@player2.curr_life}/3"
      puts "----- NEW TURN -----"
    end
  end

  def new_game?(player)
    if player.curr_life === 0
      return false
    end
    return true
  end
end
