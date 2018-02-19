module Binary
  def to_decimal(input)
    raise(ArgumentError) unless input =~ /^[01]+$/

    input
      .reverse
      .chars
      .zip(0..(input.size))
      .select { |(binary, _i)| binary == '1' }
      .reduce(0) { |decimal, (_binary, i)| decimal + 2**i }
  end
  module_function :to_decimal
end


module BookKeeping
  VERSION = 3
end
