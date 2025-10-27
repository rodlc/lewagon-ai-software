# TODO: Define your View class here, to display elements to the user and ask them for their input

require_relative "../controllers/meals_controller"
require_relative "../models/meal"

class View
  def display_list(meals)
    if meals.empty?
      puts "Pas de repas dans votre carnet pour le moment."
    else
      meals.each do |meal|
        puts "#{meal.id}. #{meal.name} : #{meal.price}"
      end
    end
  end

  def ask_for(stuff)
    puts "Quel est le #{stuff} ?"
    print "> "
    gets.chomp
  end
end
