# DO NOT remove the two lines below, needed for display purposes
require_relative "../spec/helper/board"

require_relative "corn"
require_relative "rice"


puts "\n\n📝 Day One: Corn"
# 1. Instantiate a corn crop
acorn = Corn.new
# 2. Water the corn crop
acorn.water!
# 3. Replace 'TODO' with the value of `grains` for your crop
puts "The corn crop produced #{acorn.grains} grains"
# 4. Replace 'TODO' with the state of the crop ('ripe' or 'not ripe')
puts "The corn crop is #{acorn.grains}"



puts "\n\n📝 Day Two: Rice"
# 1. Instantiate a rice crop
ricey = Rice.new
# 2. Water the rice crop
ricey.water!
# 3. Transplant the rice crop
ricey.transplant!
# 4. Replace 'TODO' with the value of `grains` for your crop
puts "The rice crop produced #{ricey.grains} grains"
# 5. Replace 'TODO' with the state of the crop ('ripe' or 'not ripe')
puts "The rice crop is #{ricey.grains}"


# DO NOT remove the two lines below, needed for display purposes
Board.new.display
