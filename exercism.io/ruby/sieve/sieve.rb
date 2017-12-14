class Sieve
  VERSION = 1

  def initialize(limit)
    @numbers = (2..limit).to_a
  end

  def primes(numbers = @numbers, step = 1)
    return numbers if step > numbers.size

    sieves = numbers.take(step)
    candidates = numbers.drop(step).reject { |n| (n % numbers[step - 1]).zero? }

    primes(sieves + candidates, step + 1)
  end
end
