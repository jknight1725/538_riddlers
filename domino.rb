# frozen_string_literal: true
class Domino
  attr_accessor :front, :back
  def initialize(value)
    self.front = value[0]
    self.back = value[1]
  end

  def to_s
    "[#{front} | #{back}]"
  end
end

dominoes = (0..6).to_a.repeated_combination(2).to_a.map! { |d| Domino.new(d) }
same_sides = dominoes.filter{ |d| d.front == d.back }
dominoes_with_a_six = dominoes.filter { |d| d.front == 6 || d.back == 6 }
both_sides_six = dominoes_with_a_six.filter { |d| d.front == 6 && d.back == 6}

puts "There are #{same_sides.size} dominoes with the same value on each side out of #{dominoes.size} dominoes"
same_sides.each {|d| print "#{d}\t" }
puts "\n"
puts "Probability = #{Rational(same_sides.size, dominoes.size)}\n\n"

puts "There are #{dominoes_with_a_six.size} dominoes containing a six on either side and #{both_sides_six.size} with both sides containing six\n"
dominoes_with_a_six.each {|d| print "#{d}\t" }
puts "\n"
puts "Probability = #{Rational(both_sides_six.size, dominoes_with_a_six.size)}"

puts "All Dominoes"
dominoes.each_slice(7) { |x| puts x * ' ' }