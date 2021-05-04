class Player
  attr_reader :player, :game

  def initialize(player)
    @player = player
    @input_array = []
  end

  def add_input(number)
    @input_array.push number
  end

  def player_input
    @input_array
  end
end
