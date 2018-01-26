module Year
  def leap?(year)
    ((year % 4).zero? && !(year % 100).zero?) || (year % 400).zero?
  end
  module_function :leap?
end

module BookKeeping
  VERSION = 3
end
