#require 'pry'

class Customer
  attr_reader :first_name, :last_name

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @all << self
  end

  def full_name
  "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.collect(&:restaurant).uniq
      #or map?
  end

#  binding.pry

#############################

  def self.find_by_name(name)
  all.find { |fname| fname.full_name == name }
  end

  def self.find_all_by_first_name(first_name)
  all.select { |first| first.first_name == first_name }
  end

  def self.all_names
  all.map(&:full_names)
  end

    def self.all
      @all
  end
end
