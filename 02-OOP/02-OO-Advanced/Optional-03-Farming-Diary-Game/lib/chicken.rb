require_relative "animal"

class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end

  def talk
    @gender == "male" ? @talk = "cock-a-doodle-doo" : @talk = "cluck cluck"
  end

  def feed!
    super
    @eggs += 2 if @gender == "female"
  end
end
