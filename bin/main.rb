#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/player'

def print_board(board)
  puts "\n\t\t\t\t+---+---+---+"
  puts "\t\t\t\t| #{board[0][0]} | #{board[0][1]} | #{board[0][2]} | "
  puts "\t\t\t\t+---+---+---+"
  puts "\t\t\t\t| #{board[1][0]} | #{board[1][1]} | #{board[1][2]} | "
  puts "\t\t\t\t+---+---+---+"
  puts "\t\t\t\t| #{board[2][0]} | #{board[2][1]} | #{board[2][2]} | "
  puts "\t\t\t\t+---+---+---+\n"
end

def verify_empty(input)
  input.to_s == ''
end

def verify_number(select)
  while select > 9 || select < 1
    print "\tInvalid input, must be a number between 1-9: "
    select = gets.chomp.to_i
  end
  select
end

def clear_scr
  Gem.win_platform? ? (system 'cls') : (system 'clear')
end

def show_winner(player, board)
  clear_scr
  puts "\n\n\t\t\t <----- Winner Board ----->"
  print_board(board)
  puts "\n\t ------> #{player} win the game! Congrats!  <------ \n\n"
  sleep 3
end

def move_player(game_board, player, var)
  input = ''
  loop do
    print_board(game_board.board_game)
    print "\n\t#{player.player} please type an available number from board to play: "
    input = verify_number(gets.chomp.to_i)
    break if game_board.replace?(input, var)
  end
  player.add_input input
  game_board.add_move
end

player = ['', '']

# print "\n\n\t\t<------Welcome to Ruby Tic Tac Toe------>\n\n"
puts "\n\n\n\t\t████████╗██╗░█████╗░░░░░░░████████╗░█████╗░░█████╗░░░░░░░████████╗░█████╗░███████╗
      \t\t╚══██╔══╝██║██╔══██╗░░░░░░╚══██╔══╝██╔══██╗██╔══██╗░░░░░░╚══██╔══╝██╔══██╗██╔════╝
      \t\t░░░██║░░░██║██║░░╚═╝█████╗░░░██║░░░███████║██║░░╚═╝█████╗░░░██║░░░██║░░██║█████╗░░
      \t\t░░░██║░░░██║██║░░██╗╚════╝░░░██║░░░██╔══██║██║░░██╗╚════╝░░░██║░░░██║░░██║██╔══╝░░
      \t\t░░░██║░░░██║╚█████╔╝░░░░░░░░░██║░░░██║░░██║╚█████╔╝░░░░░░░░░██║░░░╚█████╔╝███████╗
      \t\t░░░╚═╝░░░╚═╝░╚════╝░░░░░░░░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░░░░░░░░░░╚═╝░░░░╚════╝░╚══════╝"
puts "\t\t\t█▄▄ █░█ █ █░░ ▀█▀   █░█░█ █ ▀█▀ █░█   █▀█ █░█ █▄▄ █▄█
\t\t\t█▄█ █▄█ █ █▄▄ ░█░   ▀▄▀▄▀ █ ░█░ █▀█   █▀▄ █▄█ █▄█ ░█░"
sleep 2
while verify_empty(player[0])
  print "\t\n-> Please enter Player 1 name: "
  player[0] = gets.chomp.capitalize
end
while verify_empty(player[1])
  print "\t\n-> Please enter Player 2 name: "
  player[1] = gets.chomp.capitalize
end

board = Board.new
player_one = Player.new(player[0])
player_two = Player.new(player[1])

puts "\n So #{player_one.player} will play as X and #{player_two.player} will play as O"
puts "\n Good luck and have fun!...\n\n\n"

sleep 3

clear_scr

loop do
  clear_scr

  move_player(board, player_one, 'X')
  if board.method_check(player_one.player_input)
    show_winner(player_one.player, board.board_game)
    break
  end

  if board.draw?
    clear_scr
    puts "\t\t\t <----- Draw Board ----->"
    print_board(board.board_game)
    puts "\t\t\t -------> It's a tie! <-------"
    puts "\t\t\t-------> Nobody wins :( <-------"
    break
  end

  clear_scr

  move_player(board, player_two, 'O')
  if board.method_check(player_two.player_input)
    show_winner(player_two.player, board.board_game)
    break
  end
end
