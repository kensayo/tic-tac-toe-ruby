require_relative '../lib/solutions'

class Board
  include WinningSol

  def initialize
    @board = [%w[1 2 3],
              %w[4 5 6],
              %w[7 8 9]]
    @number_moves = 0
  end

  def board_game
    @board
  end

  def replace?(number, var)
    number = number.to_s
    return false if available?(number)

    @board = @board.map { |arr| arr.map { |item| item == number ? var : item } }
    @number_moves += 1
    true
  end

  def draw?
    return true if @number_moves == 9

    false
  end

  private

  def available?(number)
    @board.each do |arr|
      return false if arr.any? { |item| item == number }
    end
    true
  end
end
