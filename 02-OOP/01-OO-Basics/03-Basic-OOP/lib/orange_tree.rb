class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :dead, :age, :fruits, :height

  def initialize
    @age = 0
    @dead = false
    @fruits = 0
    @height = 0
  end

  def aging
    @age += 1
    @height = @height + 1 if @age <= 10
  end

  def dead?
    if @age > 100 || (@age > 50 && rand(100) <= @age)
      @dead = true
    else
      @dead = false
    end
  end

  def fruiting
    if age > 5 && age < 10
      @fruits = 100
    elsif age >= 10 && age < 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive?
  end

  def one_year_passes!
    dead?
    aging
    fruiting
  end
end
