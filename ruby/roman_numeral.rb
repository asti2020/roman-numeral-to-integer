def roman_numeral(string)

  romains = {
    I: 1,
    IV: 4,
    V: 5,
    IX: 9,
    X: 10,
    L: 50,
    C: 100,
    CD: 400,
    D: 500,
    M: 1000
  }

  total = 0
  idx = 0

  while idx < string.length
    twoChar = (string[idx] + (string[idx + 1] || '')).to_sym

    if !romains[twoChar].nil?
      total += romains[twoChar]
      idx += 2
    else
      total += romains[string[idx].to_sym]
      idx += 1
    end
  end
  total
  # type your code in here
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 1"
  puts roman_numeral('I')

  puts

  puts "Expecting: 9"
  puts roman_numeral('IX')

  puts

  puts "Expecting: 402"
  puts roman_numeral('CDII')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
