class Customer
	attr_reader :first_name, :last_name
  	@@all = []

  	def self.all
  		@@all
  	end

  	def initialize(first_name, last_name)
  		@first_name = first_name
  		@last_name = last_name
  		@@all << self
  	end

  	def full_name
  		"#{first_name} #{last_name}"
  	end

  	def add_review(restaurant, content, rating)
  		Review.new(self, restaurant, content, rating)
  	end

  	#given a SPECIFIC review object, change its content/rating
  	#but only IF it belongs to this customer
  	def update_review(review, new_content, new_rating)
  		if review.customer != self
  			puts "You can't update this review! It's not yours!"
  		else
  			review.content = new_content
  			review.rating = new_rating
  		end
  	end

  	#returns an array of review objects created by this user
  	def reviews
  		Review.all.select {|review| review.customer == self }
  	end

  	def num_reviews
  		self.reviews.count
  	end

  	#goes through Review to return an array of (uniqe) restaurant objects
  	#that this customer has reviewed
  	def restaurants
  		self.reviews.map {|review| review.restaurant}.uniq
  	end

  	# .Class methods below

  	def self.find_by_name(full_name)
  		@@all.find {|customer| customer.full_name == full_name }
  	end

  	def self.find_all_by_first_name(first_name)
  		@@all.select {|customer| customer.first_name == first_name }
  	end

  	def self.all_names
  		@@all.map {|customer| customer.full_name}
  	end
end
