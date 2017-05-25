This exercise is to write a converter to and from Roman numerals.
The script should be a standard Unix filter, reading from files specified on the command-line or
STDIN and writing to STDOUT. Each line of input will contain one integer (between 1 and 3999)
expressed as an Arabic or Roman numeral. There should be one line of output for each line of
input, containing the original number in the opposite format.

For example, given the following input:
```
III
29
38
CCXCI
1999
```

The correct output is:
```
3
XXIX
XXXVIII
291
MCMXCIX
```

### Testing

* Enter rake spec for running automatic specs
* Run ruby script.rb with the following text files stored under /lib -> arabic.txt, mixed.txt, roman.txt


