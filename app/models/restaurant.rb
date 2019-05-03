class Restaurant
  attr_reader :name
  @@restaurants = []


  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    total = 0
    reviews = self.reviews.each { |review| total += review.rating }
    average = total.to_f / reviews.count
  end

  def longest_review
    long_boi = ""
    self.reviews.each { |review| review.content.size > long_boi.size ? long_boi = review.content : long_boi }
    long_boi
  end

  def self.find_by_name(name)
    @@restaurants.find { |restaurant| restaurant.name == name }
  end

end
