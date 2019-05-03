class Review
  attr_accessor :restaurant, :content, :rating
  attr_reader :customer
  @@all_rev = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all_rev << self
  end

  def self.all
    @@all_rev
  end

end
