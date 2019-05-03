class Customer
  attr_reader :first_name, :last_name, :review

  @@all = []

  def initialize(first_name, last_name, review)
    @first_name = first_name
    @last_name  = last_name
    @review = review
    @@all << self
  end

  def self.all
    @@all 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    Review.all.find { |inst| inst.review ==self}
  end

  def restaurants
    Revew.all.select { |inst| inst.restaurant == self}
  end

  def self.find_by_name(name)
    Review.all.map { |inst| inst.Customer == name}
  end

  
end
