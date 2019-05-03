class Restaurant
  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def customers
  reviewed.map(&:customer).uniq
  end

  def reviews
  Review.all.select { |reviews| reviews.restaurant == self }
  end

  def average_star_rating
  review.map(&:rating).count / review.length
  end

  def longest_review
  review.max_by { |lreview| lreview.content.length }
    review.lenth
  end

  def self.find_by_name(name)
      all.find { |location| location.name == name }
    end

    def self.all
    @@all
  end
end
