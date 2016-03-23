require 'prime'

class Raindrops
  VERSION = 1

  def self.convert(n)
    factors = Prime.prime_division(n).map(&:first)
    returns = []

    returns << 'Pling' if factors.include?(3)
    returns << 'Plang' if factors.include?(5)
    returns << 'Plong' if factors.include?(7)

    returns.empty? ? n.to_s : returns.join
  end
end
