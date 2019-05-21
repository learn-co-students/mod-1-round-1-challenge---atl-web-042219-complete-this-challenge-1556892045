class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def update_reviews(review, new-content, new_rating)
    if review.customer !=self
      "You can't update this review! It's not yours!"
    else
      review.content = new_content
      review.rating = new_rating
    end
  end

  def reviews
    Review.all.select{|review|review.customer == self}
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants
    self.reviews.map(&:restaurant).uniq
  end

  def self.find_by_name(full_name)
    @@all.find{|customer|customer.full_name.dowmcsase == full_name.downcase}
  end
  def self.find_all_by_first_name(first_name)
    @@all.select{|customer|customer.first_name.downcase == first_name.downcase}
  end

  def self.all_names
    self.all.map(&:full_name)
  end   
  end

  end
end
