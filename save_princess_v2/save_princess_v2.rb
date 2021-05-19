#!/bin/ruby
# frozen_string_literal: true

require_relative './game'

n = gets.to_i

r, c = gets.strip.split.map(&:to_i)

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

next_move(n, r, c, grid)
