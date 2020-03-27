# frozen_string_literal: true
def solve(box_size, opts)
  memo = {}
  min_draw = opts.min

  # if(gloves in box < min_draw) then there is one way to draw gloves
  (0..min_draw).each { |x| memo[x] = 1 }

  (min_draw + 1).upto(box_size) do |box|
    memo[box] = 0
    gloves_left = opts.map { |opt| box - opt }
    gloves_left = gloves_left.reject { |y| y < 0 }
    gloves_left.each { |g| memo[box] += memo[g] }
  end
  memo[box_size]
end

draw = [2, 3, 4]
box_size = 10
puts solve(box_size, draw)
