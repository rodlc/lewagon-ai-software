class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :name, :city, :ratings, :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @ratings = []
    @average_rating = 0
  end

  def rate(new_rate)
    ratings << new_rate
    @average_rating = ratings.sum.to_f / ratings.size
  end

  # TODO: implement .filter_by_city and #rate methods
  def self.filter_by_city(restaurants, city)
    city_restaurants = []
    restaurants.each do |restaurant|
      city_restaurants << restaurant if restaurant.city == city
    end
    city_restaurants
  end
end

# jules_verne = Restaurant.new("paris", "Jules Verne")
# bluebird = Restaurant.new("london", "Bluebird")
# daniel = Restaurant.new("new york", "Daniel")
# restaurants = [jules_verne, bluebird, daniel]
# p Restaurant.filter_by_city(restaurants, "london")
# => [ #<Restaurant:0x007f9a43bb7eb8 @city="london", @name="Bluebird"> ]
