# TODO: you can build your calculator program here!

require_relative "calculator"

puts "Choisir un 1er nombre"
first_num = gets.chomp.to_i

puts "Choisir un 2ème nombre"
second_num = gets.chomp.to_i

puts "Choisir un opérateur entre [+] [-] [*] [/]"
operator = gets.chomp

puts calculator(first_num, second_num, operator)
