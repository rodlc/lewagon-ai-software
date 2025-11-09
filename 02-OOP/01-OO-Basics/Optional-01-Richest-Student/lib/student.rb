class Student
  include Comparable

  attr_reader :name, :fives, :tens, :twenties

  def <=>(other)
    wealth <=> other.wealth
  end

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end

  def wealth
    (@fives * 5) + (@tens * 10) + (@twenties * 20)
  end
end

# p alice = Student.new("Alice", 1, 2 ,3)
# p paul = Student.new("Paul", 3, 2 ,1)
# p alice.wealth
