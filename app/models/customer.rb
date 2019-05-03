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

  def add_review (restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    num_rev = Review.all.select{|rev| rev.customer == self}
    num_rev.count
  end

  def restaurants
    my_res = Review.all.select {|rev| rev.customer == self}
    my_res.map {|rev| rev.restaurant}.uniq
  end

end
