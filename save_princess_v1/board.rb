# frozen_string_literal: true

# This defines the board of the game
class Board
  # attr_accessor :dimension

  def dimension=(new_dimension)
    if new_dimension.odd? && new_dimension >= 3 && new_dimension < 100
      @dimension = new_dimension
    else
      puts 'Verify Input'
      puts 'Must be odd, >=3 and <100'
      exit
    end
  end

  attr_reader :dimension
end
