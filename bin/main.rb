#!/usr/bin/env ruby
#
$player_one = ''
$player_two = ''
def play
    print_board
    set_players
    9.times do |time|
      player = time.even? ? $player_one : $player_two
      add_number(player)
    end
    set_draw
end
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

  def set_players
    print "\n\n\t\t<------Welcome to Ruby Tic Tac Toe------>\n\n"
    puts "\nPlayer name of player1:"
    $player_one = gets.chomp
    puts "\nPlayer name of player2:"
    $player_two = gets.chomp

    puts "\n So #{$player_one} will play as X and #{$player_two} will play as O"
    puts "\n Good luck and have fun!...\n\n\n"
    
    sleep 3
    Gem.win_platform? ? (system 'cls') : (system 'clear')
  end
  
  def add_number(player)
    print_board
    print "\t#{player} please type a number from board to play: "
    verify_number(gets.chomp.to_i)   
  end

  def show_winner(player)
    puts "\n#{player} wins!"
    puts "\nGame Over."
  end
  
  def set_draw
    puts "\nThe game is a Tie!"
    puts "\nGame Over."
  end
play