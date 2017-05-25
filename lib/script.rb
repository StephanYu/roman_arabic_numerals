#!/usr/bin/env ruby
require './number'

num = Number
ARGF.each do |line|
  line = line.chomp
  if num.arabic?(line)
    p num.to_roman(line)
  elsif num.roman?(line)
    p num.to_arabic(line)
  else raise "Input on line #{ARGF.lineno} with value #{line} is not valid."
  end
end
