require 'game'

describe Game do
  before do
    @jini = Player.new("Jini")
    @laura = Player.new("Laura")
  end

  subject(:game) { described_class.new(@jini, @laura) }

  it "has two players" do
    expect(game).to have_attributes(:player_1 => @jini, :player_2 => @laura)
  end
  it "reduces player 2's hit points when player 1 attacks" do
    expect { game.player_1_attack }.to change{ game.player_2.hit_points }.by(-10)
  end
  it "reduces player 1's hit points when player 2 attacks" do
    expect { game.player_2_attack }.to change{ game.player_1.hit_points }.by(-10)
  end
end
