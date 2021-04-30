#!/usr/bin/env ruby

player_1 = ""
player_2 = ""
board = [[1,2,3],
         [4,5,6],
         [7,8,9]]

print "\t\t<------Welcome to Ruby Tic Tac Toe------>\n\n"
while player_1 == ""
    print "\t\n-> Please enter Player 1 name: "
    player_1 = gets.chomp
end

while player_2 == ""
    print "\t\n-> Please enter Player 2 name: "
    player_2 = gets.chomp
end

puts "\n So #{player_1} will play as X and #{player_2} will play as O"
puts "\nGood luck and have fun!...\n\n\n"

puts "\t\t+---+---+---+"
puts "\t\t| #{board[0][0]} | #{board[0][1]} | #{board[0][2]} | "
puts "\t\t+---+---+---+"
puts "\t\t| #{board[1][0]} | #{board[1][1]} | #{board[1][2]} | "
puts "\t\t+---+---+---+"
puts "\t\t| #{board[2][0]} | #{board[1][1]} | #{board[2][2]} | "
puts "\t\t+---+---+---+"
