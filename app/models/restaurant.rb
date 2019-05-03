class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select {|r| r.restaurant == self}.map {|c| c.customer}.uniq
  end

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def average_star_rating
    sum = self.reviews.map {|a| a.rating}.reduce(:+).to_f
    sum /self.reviews.count.to_f
  end

  def longest_review
    self.reviews.map {|r| r.content}.max_by {|x| x.length}
  end

  def self.find_by_name(name)
    Restaurant.all.select {|r| r.name == name}.first
  end

end
