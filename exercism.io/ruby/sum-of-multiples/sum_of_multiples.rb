class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(max)
    @numbers
      .map { |n| n.to_i > 0 ? (n...max).step(n).to_a : [] }
      .flatten
      .uniq
      .reduce(&:+)
      .to_i
  end
end
