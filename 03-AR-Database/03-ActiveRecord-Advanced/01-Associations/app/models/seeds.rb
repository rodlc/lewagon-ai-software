require "faker"

# TODO: Write a seed to insert 100 posts in the database
100.times do |i|
  Post.create(title: Faker::Music.band, url: Faker::Sports::Football.player, votes: 2)
end
