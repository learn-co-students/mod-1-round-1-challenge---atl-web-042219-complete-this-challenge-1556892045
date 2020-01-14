require "pry"
class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
        review.customer
    end.uniq
  end

  def longest_review
    a = reviews.map do |review|
      review.content
    end
    a.max_by(&:length)
  end

  def average_star_rating
    a = reviews.map do |review|
      review.rating
    end
    a.reduce(:+).fdiv(a.size)
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

end
