# TODO: Define your View class here, to display elements to the user and ask them for their input

class View

  def display_recipes(recipes)
    if recipes.empty?
      puts "Pas de recettes dans votre carnet pour le moment."
    else
      puts "--- Toutes vos recettes ---"
      recipes.each_with_index do |recipe, index|
        puts "#{index + 1}. #{recipe.name} : #{recipe.description}"
      end
      puts "--------------------------"
    end
  end

  def ask_for(stuff)
    puts "Quel est le #{stuff} ?"
    print "> "
    gets.chomp
  end

  def ask_for_index
    puts "Quelle recette (par son numéro) ?"
    print "> "
    gets.chomp.to_i - 1 # Pour obtenir un index base zéro
  end

end
