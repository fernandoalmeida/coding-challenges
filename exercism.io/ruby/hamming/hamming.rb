class Hamming
  VERSION = 1

  def self.compute(a, b)
    return 0 if a == b

    fail(ArgumentError, 'strands must have equal size') if a.size != b.size

    a.chars.count { |c| c != b.slice!(0) }
  end
end
