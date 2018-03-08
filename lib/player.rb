class Player
  attr_reader :name
  attr_accessor :hitpoints
  MAXHP = 100
  def initialize(name, hitpoints = MAXHP)
    @hitpoints = hitpoints
    @name = name
  end

  def reduce_points
    @hitpoints -= 10
  end
end
