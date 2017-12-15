module RomanNumeral
  def to_roman
    [
      ROMAN_NUMERALS.dig(:thousands, digits[0]),
      ROMAN_NUMERALS.dig(:hundreds, digits[1]),
      ROMAN_NUMERALS.dig(:dozens, digits[2]),
      ROMAN_NUMERALS.dig(:units, digits[3])
    ].join
  end

  private

  # Internal: Convert an integer to an array of 4 elements.
  #
  # Examples
  #
  #   2999.digits
  #   # => [2, 9, 9, 9]
  #
  #   25.digits
  #   # => [0, 0, 2, 5]
  #
  # Returns an Array.
  def digits
    format('%04d', self).chars.map(&:to_i)
  end

  ROMAN_NUMERALS = {
    thousands: ['', 'M', 'MM', 'MMM'],
    hundreds: ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'],
    dozens: ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'],
    units: ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  }.freeze
  private_constant :ROMAN_NUMERALS
end

Integer.include(RomanNumeral)

module BookKeeping
  VERSION = 2
end
