def new_dice(dice, count)
  tmp = dice.map { dice.sample }
  [tmp, count + 1]
end

def trial(n)
  dice = (1..n).to_a
  count = 0

  until dice.uniq.size == 1
    dice, count = new_dice(dice, count)
  end
  count
end

def simulation(n)
  arr = []
  10000.times { arr << trial(n) }
  arr.sum / arr.size
end

def solve
  (1..50).map{ |x| simulation(x) }
end

puts solve





