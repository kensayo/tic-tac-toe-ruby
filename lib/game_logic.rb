module WinningSol
  def method_check(input)
    winning_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    winning_array.each do |var|
      cont = 0
      var.each { |var2| cont += 1 if input.include?(var2)}
      return true if cont == 3
    end
    false
  end
end
