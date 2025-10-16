def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  a_string_clean = a_string.gsub(/[^a-zA-Z]/, '').squeeze('').strip.downcase
  a_string_clean == "" ? false : a_string_clean.reverse == a_string_clean
end
