class Hamming
  VERSION = 1

  def self.compute(a, b)
    return 0 if a == b

    fail(ArgumentError, 'strands must have equal size') if a.size != b.size

    x = a.split('')
    y = b.split('')

    x.count { |e| e != y.shift }
  end
end
