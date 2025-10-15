def old_roman_numeral(an_integer)
  # TODO: translate integer in roman number - old-style way
  roman_integer = ""
  roman_letters = ["M", "D", "C", "L", "X", "V", "I"]
  roman_units = [1000, 500, 100, 50, 10, 5, 1]
  roman_units.each do |unit|
    roman_letter = roman_letters[roman_units.index(unit)]
    roman_float = an_integer / unit
    roman_integer = roman_integer + (roman_letter * roman_float.truncate)
    an_integer = an_integer % unit
  end
  roman_integer
end

def new_roman_numeral(an_integer)
  # TODO: translate integer in roman number - modern-style way
  roman_units = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  roman_letters = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

  roman_integer = ""

  roman_units.each_with_index do |unit, index|
    count = an_integer / unit
    roman_integer += roman_letters[index] * count
    an_integer = an_integer % unit
  end
  roman_integer
end
