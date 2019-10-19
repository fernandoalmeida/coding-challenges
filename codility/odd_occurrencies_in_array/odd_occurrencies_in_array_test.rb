require 'minitest/autorun'
require_relative 'odd_occurrencies_in_array'

class OddOccurrenciesInArrayTest < Minitest::Test
  def test_solution
    assert_equal(solution([9, 3, 9, 3, 9, 7, 9]), 7)
  end
end
