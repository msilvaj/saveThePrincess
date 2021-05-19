#!/bin/ruby
# frozen_string_literal: true

require_relative './board'
require_relative './game'

game = Game.new
board = Board.new
board.dimension = gets.to_i
grid = Array.new(board.dimension.to_i)

(0...board.dimension).each do |i|
  grid[i] = gets.strip
end

game.display_path_to_princess(board.dimension, grid)
