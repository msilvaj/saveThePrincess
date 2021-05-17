#!/bin/ruby
# frozen_string_literal: true

# If Princess Peach and bot's position are randomly set,
# as was defined in the definition of the problem,
# why do I need input it manualy, instead of using for example
# the rand() function to generate the location of the princess?
#
# I did not understand this, and even if I can
# modify the header of the method "nextMove"..
#

def next_move(dimension, bot_row, bot_column, grid)
  # puts grid
  m = Array.new(2) # coordinate of robot in the grid
  p = Array.new(2) # coordinate of princess in the grid
  m[0] = bot_row
  m[1] = bot_column

  (0..(dimension - 1)).each do |i|
    (0..(dimension - 1)).each do |j|
      if grid[i][j] == 'p'
        p[0] = i
        p[1] = j
      end
    end
  end

  if m[0] > p[0]
    move = 'UP'

  elsif m[0] < p[0]
    move = 'DOWN'
  end

  if m[1] > p[1]
    move = 'LEFT'
  elsif m[1] < p[1]
    move = 'RIGHT'
  end
  puts move
end

n = gets.to_i

r, c = gets.strip.split.map(&:to_i)

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

next_move(n, r, c, grid)
