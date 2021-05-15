#!/bin/ruby
def displayPathtoPrincess(n,grid)
  m = Array.new(2) #coordinate of robot in the grid
  p = Array.new(2) #coordinate of princess in the grid
  m[0], m[1] = 0, 0
  p[0], p[1] = 0, 0 
 
  for i in (0..(n - 1))
    for j in (0..(n - 1)) 
      if grid[i][j] == 'm'
        m[0], m[1] = i, j
      elsif grid[i][j] == 'p'
        p[0], p[1] = i, j
      end
    end
  end
 
  if m[0] >= p[0]
    print "UP\n" * (m[0] - p[0])
  else
    print "DOWN\n" * (p[0] - m[0])
  end
 
  if m[1] >= p[1]
    print "LEFT\n" * (m[1] - p[1])
  else
    print "RIGHT\n" * (p[1] - m[1])
  end
  return ""
end
 
m = gets.to_i

if m.odd? && m >= 3 && m < 100 
  grid = Array.new(m)

  (0...m).each do |i|
    grid[i] = gets.strip
  end

  displayPathtoPrincess(m,grid)
else
  puts "Verify Input"
  puts "Must be odd, >=3 and <100"
end
