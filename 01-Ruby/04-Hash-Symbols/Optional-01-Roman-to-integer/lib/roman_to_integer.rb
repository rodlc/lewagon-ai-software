ROMAN_VALUES = {
  "I" => 1, "V" => 5, "X" => 10, "L" => 50,
  "C" => 100, "D" => 500, "M" => 1000
}

def roman_to_integer(roman_string)
  chars = roman_string.upcase.chars
  return 0 unless chars.all? { |char| ROMAN_VALUES.key?(char) }

  total = previous_value = 0
  chars.reverse_each do |char|
    current_value = ROMAN_VALUES[char]
    total += current_value < previous_value ? -current_value : current_value
    previous_value = current_value
  end
  total
end
