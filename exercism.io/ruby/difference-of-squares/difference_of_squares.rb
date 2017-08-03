class Squares
  def initialize(n)
    @numbers = 1..n
  end

  def square_of_sum
    numbers.reduce(&:+)**2
  end

  def sum_of_squares
    numbers.map { |e| e**2 }.reduce(&:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :numbers
end

module BookKeeping
  VERSION = 4
end
