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

player_one = ''
player_two = ''
winner = true

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
Gem.win_platform? ? (system 'cls') : (system 'clear')

while winner

  print_board
  print "\t#{player_one} please type a number from board to play: "
  verify_number(gets.chomp.to_i)

  print_board
  print "\t#{player_two} please type a number from board to play: "
  verify_number(gets.chomp.to_i)

  winner = false

end

puts "\n\n#{player_one} is the winner congrats!"
