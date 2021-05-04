require_relative '../lib/board'

board2 = Board.new('kenny', 'viviana')

def print_board(board)
  puts "\n\t\t\t+---+---+---+"
  puts "\t\t\t| #{board[0][0]} | #{board[0][1]} | #{board[0][2]} | "
  puts "\t\t\t+---+---+---+"
  puts "\t\t\t| #{board[1][0]} | #{board[1][1]} | #{board[1][2]} | "
  puts "\t\t\t+---+---+---+"
  puts "\t\t\t| #{board[2][0]} | #{board[2][1]} | #{board[2][2]} | "
  puts "\t\t\t+---+---+---+\n\n"
end

print_board(board2.board_game)
board2.replace(7, 'X')
print_board(board2.board_game)