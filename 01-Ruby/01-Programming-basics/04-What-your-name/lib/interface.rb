require_relative "compute_name"

puts "What is your first name?"
first_name = gets.strip
puts "What is your middle name?"
middle_name = gets.strip
puts "What is your last name?"
last_name = gets.strip

puts "Hello, #{compute_name(first_name, middle_name, last_name)}"
