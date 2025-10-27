#  TODO: Define your Controller Class here, to orchestrate the other classes

require_relative "../models/meal"
require_relative "../repositories/meal_repository"
require_relative "../views/meal_view"

class MealsController
  def initialize(meal_repository)
    @meals = meal_repository
  end

  def list
    View.new.display_list(@meals.all)
  end

  def add
    meal_added = {}
    meal_added[:id] = 0
    meal_added[:name] = View.new.ask_for("nom du repas").to_s
    meal_added[:price] = View.new.ask_for("prix du repas").to_i
    meal = Meal.new(meal_added)
    @meals.create(meal)
  end
end
