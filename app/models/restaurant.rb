class Restaurant
	attr_reader :name
  	@@all = []

  	def self.all
  		@@all
  	end

  	def initialize(name)
  		@name = name
  		@@all << self
  	end

  	def average_star_rating
  		total_rating = 0.0
  		total_reviews = 0.0
  		self.reviews.each {|review|
	  		total_rating  += review.rating
	  		total_reviews += 1
  		}
  		total_rating/total_reviews
  	end

  	def longest_review
  		max = nil
  		self.reviews.each{|review|
  			max ||= review
  			max   = review if review.content.length > max.content.length
  		}
  		max
  	end

  	#returns an array of review objects for this restaurant
  	def reviews
  		Review.all.select {|review| review.restaurant == self}
  	end

  	def num_reviews
  		self.reviews.count
  	end

  	#goes through Review to return an array of (uniqe) customer objects
  	#that have reviewed this restaurant
  	def customers
  		self.reviews.map {|review| review.customer}.uniq
  	end

  	# .Class methods below

  	def self.find_by_name(name)
  		@@all.find {|restaurant| restaurant.name == name}
  	end
end
