# TODO: Implement the Cookbook class that will be our repository

require_relative "recipe"
require "csv"

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load_csv
  end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    p @recipes
    save_csv
  end

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    save_csv
  end

  private

  def load_csv
    return unless File.exist?(@csv_file_path)

    CSV.foreach(@csv_file_path, headers: true, header_converters: :symbol) do |row|
      # Transformer chaque ligne en objet Recipe
      @recipes << Recipe.new(row[:name], row[:description])
    end
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["name", "description"]
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
