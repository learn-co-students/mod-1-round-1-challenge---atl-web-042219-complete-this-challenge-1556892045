class Customer
  attr_reader :first_name, :last_name

  @@customer = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customer << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customer
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self }.length
  end

  def self.find_by_name(first_name, last_name)
    Customer.all.find { |x| x.first_name == first_name && x.last_name == last_name }
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select { |x| x.first_name == first_name }
  end

  # COME BACK TO THIS ONE
  # def self.all_names
  #   Customer.all.

  # end

  # def restaurants(customer)
  #   customer_reviews = Review.all.select do |review| 
  #     review.customer == customer 
  #   end
  # end






end
