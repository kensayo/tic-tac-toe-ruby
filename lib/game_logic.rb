class WinnerSelect
  attr_reader :player_one_array, :player_two_array, :winning_array, :moves
   def initialize(player_one_array, player_two_array, winning_array)
     @player_one_array = user_one_array
     @player_two_array = user_two_array
    #  @winning_array = winning_array
     @moves = 0
    #  @positions = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
    #                 4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
    #                 7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
   end
 
 
 def winning_soln
  winning_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
      while @moves < 8
          if @player_one_array.include? winning_array == true
              puts "#{Player} is the winner"
          elsif @player_two_array.include? winning_array == true
              puts "#{Player} is the winner"
          end
      @moves += 1
      end
 end
end