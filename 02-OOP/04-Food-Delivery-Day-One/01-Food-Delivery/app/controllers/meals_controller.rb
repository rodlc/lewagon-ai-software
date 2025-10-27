#  TODO: Define your Controller Class here, to orchestrate the other classes

require_relative "../models/meal"
require_relative "../repositories/meal_repository"
require_relative "../views/meal_view"

class MealsController
  def initialize(meal_repository)
    @meals = meal_repository
  end

  def list
    MealView.new.display_list(@meals.all)
  end

  def add
    meal_added = {}
    meal_added[:id] = 0
    meal_added[:name] = MealView.new.ask_for("name of the meal").to_s
    meal_added[:price] = MealView.new.ask_for("price of the meal").to_i
    meal = Meal.new(meal_added)
    @meals.create(meal)
  end
end
