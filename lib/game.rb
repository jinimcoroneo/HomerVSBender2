class Game
  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def player_1_attack
    player_2.hit_points -= 10
    @current_player = player_2
  end

  def player_2_attack
    player_1.hit_points -= 10
    @current_player = player_1
  end
end
