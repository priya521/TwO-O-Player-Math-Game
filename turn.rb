class Turn
  attr_accessor :question, :player
  def initialize(player)
    @player = player
    @question = Question.new()
  end

  def take_life
    @player.life -= 1
  end
end