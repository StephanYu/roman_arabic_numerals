# Rules
# combine letters to add values, by listing them largest to smallest from left to right:
# you may only list three consecutive identical letters.
# a single lower value may proceed a larger value, to indicate subtraction. This rule is only used to build values not reachable by the
# previous rules
module Converter
  ROMANS = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }.freeze

  def self.roman?(line)
    line.match(/^[CDILMXV]+$/)
  end

  def self.arabic?(line)
    line.match(/^[0-9]+$/)
  end

  def self.to_roman
    # ie. convert 3 to III
  end

  def self.to_arabic
    # ie. convert III to 3
  end

  def detect_exception
    # Exceptions: IV = 4 / IX = 9 / XL = 40) / XC = 90
  end
end
