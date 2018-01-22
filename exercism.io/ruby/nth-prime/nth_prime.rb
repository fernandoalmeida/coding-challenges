module Prime
  def nth(n)
    raise ArgumentError unless n > 0

    prime = 2
    primes = [prime]

    while primes.size < n
      prime += 1
      primes << prime if primes.all? { |p| prime % p != 0 }
    end

    primes[n - 1]
  end
  module_function :nth
end

module BookKeeping
  VERSION = 1
end
