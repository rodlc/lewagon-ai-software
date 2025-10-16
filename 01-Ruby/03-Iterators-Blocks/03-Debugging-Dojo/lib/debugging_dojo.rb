# Hi, this is Alex, your cowoker here.
# I wanted to share some code with you that I'm having trouble with:

# First, is this one that _should_ be easy
# but I just can't seem to understand why it's not working.
# Can you help me out?
def double_number(number)
  # This method is supposed to double the input number
  number * 2
end

# Ok, thanks so much!
# Now, I have another one that I think is a bit more complicated.
# I have the right idea, but I can't seem to get the syntax right.
def double_array(numbers)
  # This method is supposed to double each number in the array
  numbers.map { |number| number * 2 }
end

# Next up, I'm really stumped on this one:
def capitalize_words_starting_with_a(string)
  # This method is supposed to capitalize words that start with 'a'
  processed_words = []
  string.split.each do |word|
    word.capitalize! if word.downcase.start_with?("a")
    processed_words << word
  end
  processed_words.join(' ')
end

# OK for this next one, I have no idea. My boss said it should be similar
# to the one above, but I can't see how.
# It should capitalize words, but it shouldn't just be ones that start with 'a'.
# It should be words that match _any_ condition.
# The boss gave me this example:
# capitalize_words("hi everybody it is nice to meet you") do |word|
#   word.length > 3
# end
# ^ that should give me back 'hi Everybody it is Nice to Meet you'
# # I have no idea how to do that.
def capitalize_words(string)
  # This method is supposed to capitalize words that match a condition
  processed_words = []
  string.split.each do |word|
    word.capitalize! if yield(word)
    processed_words << word
  end
  processed_words.join(' ')
end

# You're planning a party 🥳 but not everyone is invited 😱
# This method will help you narrow down the guest list.
# It takes an array of names and a block that defines the condition for being invited.
# The block should return true for names that should be invited and false for those that shouldn't.
# The method will return an array of names that are invited.
#
# For example, if you want to invite only those whose names start with 'A', you can do:
# plan_party(["Alice", "Bob", "Charlie"]) { |name| name.start_with?('A') }
# => ["Alice"]
#
# If you want to invite names longer than 3 characters:
# plan_party(["Alice", "Bob", "Charlie"]) { |name| name.length > 3 }
# => ["Alice", "Charlie"]
# Examples:
# > plan_party(["Alice", "Bob", "Charlie"]) { |name| name.start_with?('A') }  # => ["Alice"]
# > plan_party(["Alice", "Bob", "Charlie"]) { |name| name.length > 3 }  # => ["Alice", "Charlie"]
# > plan_party(["Alice", "Bob", "Charlie"]) { |name| name.include?('b') }  # => ["Bob"]

def plan_party(guests)
  invited_guests = []
  guests.each do |guest|
    invited_guests << guest if yield(guest)
  end
  invited_guests
end
