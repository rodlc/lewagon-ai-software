# TODO: you can build your horse race program here!

require_relative "racing"

puts "Bienvenue ! Les chevaux du jour sont : #{HORSES.join(", ")}. Sur lequel parier ?"
horse_selected = gets.chomp

puts "Quel est le montant de votre pari ?"
bet_put = gets.chomp.to_i

puts horse_racing(horse_selected, bet_put)