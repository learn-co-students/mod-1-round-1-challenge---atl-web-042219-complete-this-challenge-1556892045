class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select {|x| x.customer == self}.count
  end

  def self.find_by_name(name)
    all.find {|x| x.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select {|x| x.first_name == name}
  end

  def self.all_names
    all.map {|x| x.full_name}
  end

  def restaurants
    array = []
    Review.all.each do |x|
      if x.customer == self
      array  << x.restaurant
    end
  end
  return array.uniq!
end
end
