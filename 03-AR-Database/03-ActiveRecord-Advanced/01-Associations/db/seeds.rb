# TODO: Write a seed

require "faker"
require "active_record"


# TODO: Write a seed to insert 100 posts in the database
5.times do |_i|
  user = User.create(username: Faker::Music.band, email: Faker::Sports::Football.player)
  5.times do |_i|
    user.posts.create(title: Faker::Music.band, url: Faker::Sports::Football.player, votes: 2)
  end
end
