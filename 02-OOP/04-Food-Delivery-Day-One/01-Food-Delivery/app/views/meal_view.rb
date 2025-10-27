# TODO: Define your View class here, to display elements to the user and ask them for their input

class MealView
  def display_list(meals)
    if meals.empty?
      puts "No meals in your menu for the moment."
    else
      meals.each do |meal|
        puts "#{meal.id}. #{meal.name} : #{meal.price}€"
      end
    end
  end

  def ask_for(stuff)
    puts "What is #{stuff}?"
    print "> "
    gets.chomp
  end
end
