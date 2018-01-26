module Grains
  def square(n)
    raise ArgumentError if n < 1 || n > 64

    2**n / 2
  end
  module_function :square

  def total
    2**64 - 1
  end
  module_function :total
end

module BookKeeping
  VERSION = 1
end
