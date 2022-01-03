# Planning
## Extract nouns from classes
```ruby
class Player
end

class Game
end

class Question
end
```
## write their roles
```ruby
# Player class stores info about each player
class Player
  def initialize
    name of player
    max life
    initial life
  end

  def set_num_of_life
    decrement life by 1
  end
end

# Game class manages the current state of game
class Game
  def initialize
    player1
    player2
  end

  def start_game
    switch btw players asking user input
    update player lives accordingly
    stop game etiher players has 0 lives left
  end

  def new_game?
    check whether a player lost
  end
end

# Question class manages the state for the question
class Question
  def initialize
    correct_ans
  end

  def generate_question
    compute sum of 2 randomly generated nums
    set as correct_ans
  end

  def get_ans
    get the correct_ans
  end
end
```
