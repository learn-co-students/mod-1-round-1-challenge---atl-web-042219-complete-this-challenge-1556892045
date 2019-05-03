class Customer
  attr_reader :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = reviews
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.map { |review| review.customer}.count
  end

  def restaurants
    Review.all.select {|restaurants| restaurant.review == customer}
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
