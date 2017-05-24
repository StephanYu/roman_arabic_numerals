module Converter
  ROMANS = {
    M:  '1000',
    CM: '900',
    D:  '500',
    CD: '400',
    C:  '100',
    XC: '90',
    L:  '50',
    XL: '40',
    X:  '10',
    IX: '9',
    V:  '5',
    IV: '4',
    I:  '1'
  }.freeze

  def self.roman?(line)
    line.match(/^[CDILMXV]+$/)
  end

  def self.arabic?(line)
    line.match(/^[0-9]+$/)
  end

  def self.to_arabic(line)
    line = line.upcase
    arabic = 0
    ROMANS.keys.each do |key|
      while line.start_with? key.to_s
        line = line.slice key.length, line.length
        arabic += ROMANS[key].to_i
      end
    end
    arabic
  end

  def self.to_roman(line)
    # if number is already in ROMANS hash return it else 
    # break number into thousands, hundreds, tenth, and singles and make note of remainder
    # convert each into roman counterpart
  end

  # def self.to_arabic_alt(line)
  #   results = line.scan(/^(M{0,3})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/)
  #   binding.pry
  #   results.flatten.reject { |e| e.to_s.empty? }.map do |roman|
  #     ROMANS[roman.to_sym] if ROMANS.has_key?(roman.to_sym)
  #   end.first
  # end
end
