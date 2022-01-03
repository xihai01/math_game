# Player class stores info about each player
class Player
  def initialize(name, max_life)
    @name = name
    @max_life = max_life
    @curr_life = max_life
  end

  def set_num_of_life
    curr_life -= 1
  end
end
