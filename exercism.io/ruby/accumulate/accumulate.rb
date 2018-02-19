module Accumulate
  def accumulate
    i = 0
    acc = []

    while i < size
      acc[i] = yield(fetch(i))
      i += 1
    end

    acc
  end
end

Array.include(Accumulate)

module BookKeeping
  VERSION = 1
end
