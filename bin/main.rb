#!/usr/bin/env ruby

def print_board

    board = [[1,2,3],
             [4,5,6],
             [7,8,9]]

    puts "\n\t\t\t+---+---+---+"
    puts "\t\t\t| #{board[0][0]} | #{board[0][1]} | #{board[0][2]} | "
    puts "\t\t\t+---+---+---+"
    puts "\t\t\t| #{board[1][0]} | #{board[1][1]} | #{board[1][2]} | "
    puts "\t\t\t+---+---+---+"
    puts "\t\t\t| #{board[2][0]} | #{board[1][1]} | #{board[2][2]} | "
    puts "\t\t\t+---+---+---+\n\n"

end

def verify_empty(input)
    return false unless input.to_s == ""
    true
end

def verify_select (select)
    
    while verify_empty(select) do
        print "\tInvaled input, must be a number 1-9: "
        select = gets.chomp.to_i
    end
    select
end


player_1 = ""
player_2 = ""
winner = true

print "\t\t<------Welcome to Ruby Tic Tac Toe------>\n\n"
while player_1 == ""
    print "\t\n-> Please enter Player 1 name: "
    player_1 = gets.chomp.capitalize
end

while player_2 == ""
    print "\t\n-> Please enter Player 2 name: "
    player_2 = gets.chomp.capitalize
end

print_board

puts "\n So #{player_1} will play as X and #{player_2} will play as O"
puts "\n Good luck and have fun!...\n\n\n"


while winner

    print_board
    print "\t#{player_1} please type a number from board to play: "
    verify_select(gets.chomp.to_i)
    
    print_board
    print "\t#{player_2} please type a number from board to play: "
    verify_select(gets.chomp.to_i)

    winner = false

end

puts "\n\n#{player_1} is the winner congrats!"