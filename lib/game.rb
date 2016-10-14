class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1_attack
    player_2.hit_points -= 10
  end

  def player_2_attack
    player_1.hit_points -= 10
  end
end
