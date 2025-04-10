# Hi, this is Alex, your cowoker here.
# I wanted to share some code with you that I'm having trouble with:

# First, is this one that _should_ be easy
# but I just can't seem to understand why it's not working.
# Can you help me out?
def double_number(number)
  # This method is supposed to double the input number
  numer * 2
end

# Ok, thanks so much!
# Now, I have another one that I think is a bit more complicated.
# I have the right idea, but I can't seem to get the syntax right.
def double_array(numbers)
  # This method is supposed to double each number in the array
  numbers.map do
    number * 2
  end
end

# Next up, I'm really stumped on this one:
def capitalize_words_starting_with_a(string)
  # This method is supposed to capitalize words that start with 'a'
  processed_words = []
  string.split.for_each do
    if start_with?(word, 'a')
      word.capitalize
    else
      word
    end
  end
  return processed_words.join(' ')
end

# OK for this next one, I have no idea. My boss said it should be similar
# to the one above, but I can't see how.
# It should capitalize words, but it shouldn't just be ones that start with 'a'.
# It should be words that match _any_ condition.
# The boss gave me this example:
# capitalize_words("hi everybody it is nice to meet you") do |word|
#   word.length > 3
# end
# ^ that should give me back 'hi EVERYBODY it is NICE to MEET you'
# # I have no idea how to do that.
def capitalize_words(string)
  # This method is supposed to capitalize words that match a condition
  processed_words = []
  string.split.each do |word|
    if word.true
      word.capitalize
    else
      word
    end
  end
  return processed_words.join(' ')
end

# Finally, I have this one that I just can't figure out
# My boss said I should get these results but it's just not working:
# > safe_divide(1, 5) # => should return 0.2
# > safe_divide(1, 0)} # => should return "Can't divide by zero"
# > safe_divide(1, 0) { 100.0 } # => should return 100.0
# The boss also said I should check out this documentation guide:
# https://docs.ruby-lang.org/en/3.2/Kernel.html#method-i-block_given-3F
# I don't know what that means, but I think it has something to do with
# checking if a block is given.
def safe_divide(number1, number2)
  # This method is supposed to divide two numbers
  if number2.is_zero?
    if there.is_a_block?
      yield
    else
      return "Cannot divide by zero"
    end
  else
    number1 / number2
  end
end
