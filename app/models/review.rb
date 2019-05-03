class Review
  #Ran out of time to figure out how to get rating limited to integer 1-5
  attr_accessor :review, :rating, :content
  attr_reader :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
