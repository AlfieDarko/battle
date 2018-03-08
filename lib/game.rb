class Game
  attr_reader :player1, :player2, :turn
  def initialize(player1, player2, turn = player1)
    @player1 = player1
    @player2 = player2
    @turn = turn
  end

  def attack(enemy)
    enemy.reduce_points
  end
end
