class Board

  attr_reader :player_one, :player_two

  def initialize(user_one, user_two)
    @board = [%w[1 2 3],
              %w[4 5 6],
              %w[7 8 9]]
    @player_one = user_one
    @player_two = user_two
  end

  def board_game
    @board
  end

  def get_item(xxx, yyy)
    @board[xxx][yyy]
  end

  def replace(number, var)
    number = number.to_s
    @board = @board.map { |arr| arr.map { |item| item == number ? var : item } }
  end
end
