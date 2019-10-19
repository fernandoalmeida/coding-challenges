require 'minitest/autorun'
require_relative 'binary_gap'

class BinaryGapTest < Minitest::Test
  def test_solution
    assert_equal(solution(9), 2)
    assert_equal(solution(529), 4)
    assert_equal(solution(20), 1)
    assert_equal(solution(15), 0)
    assert_equal(solution(32), 0)
    assert_equal(solution(1041), 5)
    assert_equal(solution(1), 0)
    assert_equal(solution(2_147_483_647), 0)
  end
end
