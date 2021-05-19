# frozen_string_literal: true

require_relative './bot'
require_relative './princess'
# The class that defines the rules of the game
class Game
  def show_movement(princess, bot)
    if bot.x_bot >= princess.x_princess
      (print "UP\n" *
            (bot.x_bot - princess.x_princess))
    else
      (print "DOWN\n" * (princess.x_princess - bot.x_bot))
    end
    if bot.y_bot >= princess.y_princess
      (print "LEFT\n" *
            (bot.y_bot - princess.y_princess))
    else
      (print "RIGHT\n" * (princess.y_princess - bot.y_bot))
    end
  end

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

  def find_positions(bot, princess, _board_size, grid)
    bot.x_bot, bot.y_bot = locate_element(grid, 'm')
    princess.x_princess, princess.y_princess = locate_element(grid, 'p')
  end

  def display_path_to_princess(board_size, grid)
    m = Bot.new # coordinate of robot in the grid
    p = Princess.new # coordinate of princess in the grid
    m.x_bot = 0
    m.y_bot = 0
    p.x_princess = 0
    p.y_princess = 0

    find_positions(m, p, board_size, grid)
    show_movement(p, m)
    ''
  end
end
