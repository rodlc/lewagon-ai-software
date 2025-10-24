# TODO: Create the MVC model

class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

p Recipe.new("Filet mignon", "Du boeuf délicieusement mijoté").name
