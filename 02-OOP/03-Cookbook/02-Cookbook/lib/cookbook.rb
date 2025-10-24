# TODO: Implement the Cookbook class that will be our repository

require_relative "recipe"

class Cookbook
  def initialize
    @recipes = []
  end

  def all
    @recipes
  end

  def create(recipe_name, recipe_description)
    recipe = Recipe.new(recipe_name, recipe_description)
    @recipes << recipe
  end

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
  end
end
