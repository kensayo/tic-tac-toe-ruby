#!/usr/bin/env ruby
#
def print_board
  board = [[1, 2, 3],
           [4, 5, 6],
           [7, 8, 9]]
  puts "\n\t\t\t+---+---+---+"
  puts "\t\t\t| #{board[0][0]} | #{board[0][1]} | #{board[0][2]} | "
  puts "\t\t\t+---+---+---+"
  puts "\t\t\t| #{board[1][0]} | #{board[1][1]} | #{board[1][2]} | "
  puts "\t\t\t+---+---+---+"
  puts "\t\t\t| #{board[2][0]} | #{board[1][1]} | #{board[2][2]} | "
  puts "\t\t\t+---+---+---+\n\n"
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

def show_winner(sel, player1, player2, tie)
  clear_scr
  if !tie
    puts "\n\tIt's a Draw!!!"
  elsif sel > 5
    puts "\n\tYou win #{player1}!!!"
  else
    puts "\n\tYou win #{player2}!!!"
  end
  puts "\tGame Over."
end

player_one = ''
player_two = ''
winner = 1
cont = 0
draw = true
input_1 = []
input_2 = []
print "\n\n\t\t<------Welcome to Ruby Tic Tac Toe------>\n\n"
while verify_empty(player_one)
  print "\t\n-> Please enter Player 1 name: "
  player_one = gets.chomp.capitalize
end
while verify_empty(player_two)
  print "\t\n-> Please enter Player 2 name: "
  player_two = gets.chomp.capitalize
end

puts "\n So #{player_one} will play as X and #{player_two} will play as O"
puts "\n Good luck and have fun!...\n\n\n"
sleep 3
clear_scr

while winner.between?(1, 6) || cont < 3
  print_board
  print "\t#{player_one} please type a number from board to play: "
  verify_number(gets.chomp.to_i)
  print_board
  print "\t#{player_two} please type a number from board to play: "
  sel = verify_number(gets.chomp.to_i)
  winner = rand(15)
  cont += 1
  if winner > 10 && cont > 3
    draw = false
    break
  end
end

show_winner(sel, player_one, player_two, draw)
