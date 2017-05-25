module Number
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
    line.match(/^(M{0,3})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/)
  end

  def self.arabic?(line)
    line.match(/^[0-9]+$/)
  end

  def self.to_arabic(line)
    line = line.upcase
    arabic = 0
    ROMANS.keys.each do |key|
      while line.start_with? key.to_s
        line = line[key.length..-1]
        arabic += ROMANS[key].to_i
      end
    end
    arabic.to_s
  end

  def self.to_roman(line)
    line = line.to_i
    roman = ''
    ROMANS.values.each do |arabic_num|
      while line >= arabic_num.to_i
        line -= arabic_num.to_i
        roman += ROMANS.key(arabic_num).to_s
      end
    end
    roman
  end
end
