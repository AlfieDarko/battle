class Game
  attr_reader :player1, :player2, :turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = @player1
  end

  def attack(enemy)
    @turn = enemy
    enemy.reduce_points
  end
end
