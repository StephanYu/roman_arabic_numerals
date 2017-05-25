#!/usr/bin/env ruby
require './converter'

ARGF.each do |line|
  line = line.chomp
  if Converter.arabic?(line)
    p Converter.to_roman(line)
  elsif Converter.roman?(line)
    p Converter.to_arabic(line)
  else
    raise "Input on line number #{ARGF.lineno} with value #{line} is not valid."
  end
end
