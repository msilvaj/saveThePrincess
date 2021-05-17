#!/bin/ruby
# frozen_string_literal: true

def show_movement(princess, bot)
  if bot[0] >= princess[0]
    print "UP\n" * (bot[0] - princess[0])
  else
    print "DOWN\n" * (princess[0] - bot[0])
  end

  if bot[1] >= princess[1]
    print "LEFT\n" * (bot[1] - princess[1])
  else
    print "RIGHT\n" * (princess[1] - bot[1])
  end
end

def find_positions(bot, princess, board_size, grid)
  (0..(board_size - 1)).each do |i|
    (0..(board_size - 1)).each do |j|
      case grid[i][j]
      when 'm'
        bot[0] = i
        bot[1] = j
      when 'p'
        princess[0] = i
        princess[1] = j
      end
    end
  end
end

def display_path_to_princess(board_size, grid)
  m = Array.new(2) # coordinate of robot in the grid
  p = Array.new(2) # coordinate of princess in the grid
  m[0] = 0
  m[1] = 0
  p[0] = 0
  p[1] = 0

  find_positions(m, p, board_size, grid)

  show_movement(p, m)
  ''
end

dimension = gets.to_i

if dimension.odd? && dimension >= 3 && dimension < 100
  grid = Array.new(dimension)

  (0...dimension).each do |i|
    grid[i] = gets.strip
  end

  display_path_to_princess(dimension, grid)
else
  puts 'Verify Input'
  puts 'Must be odd, >=3 and <100'
end
