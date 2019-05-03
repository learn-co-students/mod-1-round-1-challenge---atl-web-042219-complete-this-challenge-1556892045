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
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    total = Review.all.select {|review| review.customer == self}
    total.count
  end

  def restaurants
    Review.all.select {|review| review.restaurant if review.customer == self}
  end

  def self.find_by_name(full_name)
    all.find {|customer| full_name.include? "#{@first_name}"}
  end

  # def self.find_all_by_first_name(name)
  #   all.collect {|customer| name == "#{@first_name}"}
  # end
end
