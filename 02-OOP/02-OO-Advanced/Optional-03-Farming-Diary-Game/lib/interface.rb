# DO NOT remove the line below, written for display purpose
require_relative "../spec/helper/board"

require_relative "rice"
require_relative "corn"
require_relative "cow"
require_relative "chicken"

crops = []
animals = []

loop do
  p "Pick an action: [corn | rice | water | cow | chicken | feed | quit]"
  action = gets.chomp

  case action
  when "corn"
    p "Let's plant corn crops!"
    crops << Corn.new
  when "rice"
    p "Rice crops today!"
    crops << Rice.new
  when "water"
    crops.each { |crop| crop.water! }
  when "cow"
    animals << Cow.new
  when "chicken"
    animals << Chicken.new("#{rand(2) == 1 ? 'male' : 'female'}")
  when "feed"
    animals.each { |animal| animal.feed! }
  when "quit"
    p "See you next time"
    break
  else
    p "I don't know what you mean..."
  end
  Board.new.display
end

# Display the state of the farm (move the line below in the loop when asked)
