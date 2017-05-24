#!/usr/bin/env ruby

# script should be a standard Unix filter reading from files specified on the command-line or
# STDIN and writing to STDOUT.
# Each line of input will contain one integer (between 1 and 3999) expressed as an Arabic or Roman numeral. 
# There should be one line of output for each line of input, containing the original number in the opposite format.

# Create a filter that accepts input both from standard input and from files -> ARGF
ARGF.each do |line|
  case line
  when Converter.arabic?(line) then Converter.to_roman(line)
  when Converter.roman?(line) then Converter.to_arabic(line)
  else raise "Input on line number #{ARGF.lineno} with value #{line} is not valid"
  end
end
