# frozen_string_literal: true

require_relative './bot'
require_relative './princess'

def locate_element(grid, board_size)
  # x cordinate of the element
  x = nil
  (0..grid.length - 1).each do |i|
    x = i if grid[i].include?(board_size)
  end
  # y cordinate of the element
  y = grid[x].index(board_size)
  # return [x, y]
  [x, y]
end

def find_position(princess, _board_size, grid)
  princess.x_princess, princess.y_princess = locate_element(grid, 'p')
end

def next_move(dimension, bot_row, bot_column, grid)
  m = Bot.new # coordinate of robot in the grid
  p = Princess.new # coordinate of princess in the grid
  m.x_bot = bot_row
  m.y_bot = bot_column

  find_position(p, dimension, grid)

  if m.x_bot > p.x_princess
    move = 'UP'

  elsif m.x_bot < p.x_princess
    move = 'DOWN'
  end

  if m.y_bot > p.y_princess
    move = 'LEFT'
  elsif m.y_bot < p.y_princess
    move = 'RIGHT'
  end
  puts move
end
