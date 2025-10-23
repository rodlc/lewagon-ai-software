require_relative "animal"

class Cow < Animal
  attr_reader :milk

  def initialize
    @milk = 0
    super
  end

  def talk
    @talk = "moo"
  end

  def feed!
    super
    @milk += 2
  end
end
