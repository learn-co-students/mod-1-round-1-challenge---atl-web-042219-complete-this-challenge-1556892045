class Restaurant
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |r| r.restaurant == self }
  end

  def customers
    reviews.map { |r| r.customer }.uniq
  end

  def average_star_rating
    rate = reviews.map { |r| r.rating }
    rate.sum.to_f / rate.size
  end

  def longest_review
    contents = reviews.map { |r| r.content }.map { |c| c.size }
    i = contents.find_index(contents.max)
    reviews[i].content
  end

  def self.find_by_name(name)
    self.all.find { |r| r.name == name }
  end
  
end
