class Review

  attr_accessor :rating, :content
  attr_reader :customer, :restaurant
  @@all = []

  def initialize(restaurant, customer, rating, content)
    @restaurant = restaurant#object
    @customer = customer#object
    @rating = rating#integer from 1-5
    @content = content#string
    @@all << self
  end

  def self.all
    @@all
  end

end
#COMPLETE
