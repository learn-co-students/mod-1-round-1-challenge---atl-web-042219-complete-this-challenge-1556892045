class Restaurant
  attr_reader :name

  @@restaurant = []

  def initialize(name)
    @name = name
    @@restaurant << self
  end

  def self.all
    @@restaurant
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
    review_sum = reviews.sum { |review| review.rating }
    review_count = reviews.count
    review_avg = ((review_sum.to_f) / (review_count)) 
  end

  def self.find_by_name(name)
    Restaurant.all.find { |x| x.name == name }
  end

  # COME BACK TO THIS ONE
  # def customers
  #   reviews.select { |review| review.customer }.uniq!
  # end

  # COME BACK TO THIS ONE
  # def longest_review
  #   reviews.find { |x| x.content.size.max }
  # end

end
