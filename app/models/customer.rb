class Customer
  attr_reader :first_name, :last_name
  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end

  def self.all
    @@customers
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select { |cust| cust.customer == self}.length
  end

  def restaurants
    reviews = Review.all.select { |cust| cust.customer == self}
     reviews.map { |x| x.restaurant }.uniq
  end

end
