class Customer
  attr_reader :first_name, :last_name

    @@all = [] 
    @@count = 0

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
    Review.new(self, restaurant, content, rating)
    @@count +=1
  end 

  def num_reviews
    @@count 
  end 

  def restaurants
    my_review_restaurants = Review.all.select { |rev| rev.customer == self }
    my_review_restaurants.map { |rev| rev.restaurant }
  end 

end 
  
