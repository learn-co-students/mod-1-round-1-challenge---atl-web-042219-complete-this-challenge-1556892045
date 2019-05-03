class Restaurant
  attr_reader :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @reviews = review
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Restaurant.all.map { |rest| rest.review}
  end

  def reviews
    Restaurant.all.map { |restaurant| restaurant.review }
  end

  def average_star_rating
  end

  def longest_review
  end

end
