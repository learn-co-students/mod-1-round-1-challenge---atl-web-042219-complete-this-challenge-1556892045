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
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    number_of_reviews = []
    Review.all.each do |review_obj|
      if review_obj.user == self
        number_of_reviews << review_obj
      end
    end
    number_of_reviews.size
  end

  #works^

  def restaurants
    Review.all.select {|review_obj| review_obj.user == self }
  end

  #works^

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  #works^

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  #works^

  def self.all_names
    all_customer_names = []
    self.all.each do |customer_obj|
      all_customer_names << customer_obj.full_name
    end
  end

  #works^

end
