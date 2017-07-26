class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    (1..n).reduce(&:+)**2
  end

  def sum_of_squares
    (1..n).map { |e| e**2 }.reduce(&:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

  attr_reader :n
end

module BookKeeping
  VERSION = 4
end
