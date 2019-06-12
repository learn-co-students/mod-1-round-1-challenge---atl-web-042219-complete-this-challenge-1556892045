class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
     Review.new(self, restaurant, content, rating) #self/customer
  end

  def num_reviews
    Review.all.select{|review|review.customer == self}.length
  end

  def restaurants
     all_selected_reviews = Review.all.select do |review|
        review.customer == self
      end
      all_selected_reviews.map do |review|
       review.restaurant
       # This provides an array of all INSTANCES of restaurants visted
       # We also can look at it from the unique names of all the restaurants 
       # visited by the customer
      end 
  end

  def self.find_by_name(customer_full_name)
    # given a string of a full name, returns the first customer whose full name matches
    Customer.all.find do |customer|
        customer.full_name == customer_full_name
    end
  end 

  def self.find_all_by_first_name(name)
   # given a string of a first name, returns an **array** containing 
   # all customers with that first name
    Customer.all.find_all do |customer|
          customer.first_name == name
    end
  end

  def self.all_names
    #should return an **array** of all of the customer full names
    Customer.all.map do |customer|
           customer.full_name
    end
  end



end
