#  TODO: Define your Controller Class here, to orchestrate the other classes

require_relative "cookbook"
require_relative "view"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
  end

  def list
    @cookbook.all
    View.new.display_list(@cookbook.all)
  end

  def add
    recipe.name = View.new.ask_for("nom de la recette")
    recipe.description = View.new.ask_for("description de la recette")
    @cookbook.create(recipe)
  end

  def remove
    index = View.new.ask_for_index
    @cookbook.destroy(index)
  end
end
