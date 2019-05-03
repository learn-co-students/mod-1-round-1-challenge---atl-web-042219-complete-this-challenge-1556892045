class Customer
  attr_reader :first_name, :last_name
  @@all_customers = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
  end

  def self.all
    @@all_customers
  end
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select {|all_reviews| all_reviews.customer == self}.count
  end

  def restaurants
    Review.all.select {|all_restaurants| all_restaurants.customer == self}
  end

  def self.find_all_by_first_name(name)
    @@all_customers.select {|cus_name| cus_name.first_name == name}
  end
end
