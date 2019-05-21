class Restaurant
  attr_reader :name
  @@all =[]
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def average_star_rating
    (self.reviews.map(&:rating).sum/self.reviews.count.to_f).round(2).to_s+"out of 5 stars"
  end

  def longest_review
    self.reviews.max_by{|review.content.length}
  end

  def reviews
    Review.all.select{|review|review.restaurant == self}
  end

  def num_reviews
    self.reviews.count
  end

  def customers
    self.reviews.map(&:customer).uniq
  end

  def self.find_by_name
    @@all.find{|restaurant|restaurant.name.downcase == name.downcase}
  end
  
end
