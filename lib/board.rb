require_relative '../lib/game_logic'

class Board
  include WinningSol
  attr_reader :player_one, :player_two

  def initialize(user_one, user_two)
    @board = [%w[1 2 3],
              %w[4 5 6],
              %w[7 8 9]]
    @start_state = %w[1 2 3 4 5 6 7 8 9]
    @player_one = user_one
    @player_two = user_two
  end

  def board_game
    @board
  end

  def replace?(number, var)
    number = number.to_s
    return false if available?(number)

    @board = @board.map { |arr| arr.map { |item| item == number ? var : item } }
    true
  end

  def available?(number)
    @board.each do |arr|
      return false if arr.any? { |item| item == number }
    end
    true
  end
end