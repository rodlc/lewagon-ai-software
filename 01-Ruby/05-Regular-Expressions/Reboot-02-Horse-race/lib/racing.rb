HORSES = ["Belle du jour", "Superblue", "Attaboy"]

def horse_racing(horse_bet, bet)
	horse_winner = HORSES.sample
	if bet >= 10
		if horse_bet == horse_winner
			bet = bet + 50
			puts "Bravo, le vainquer est #{horse_winner}, vous avez choisi le bon cheval ! Votre nouveau solde est #{bet}"
		else
			bet = bet - 10
			puts "Dommage, le gagnant est #{horse_winner}. Votre nouveau solde est #{bet}. Retentez votre chance !"
		end
	else
		puts "Désolé, vous n'avez pas assez d'argent pour jouer. Placez un pari d'au moins 10€"
	end
	"Voulez vous continuer à parier ?"
end

