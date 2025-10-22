# Create your first class

class Van
  def initialize(brand, model, year, converted, capacity)
    @brand = brand
    @model = model
    @year = year
    @converted = converted
    @capacity = capacity
  end

  def convert
    @converted = true
  end
end
