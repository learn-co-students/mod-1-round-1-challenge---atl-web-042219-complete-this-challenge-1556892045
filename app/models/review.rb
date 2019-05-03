class Review #the sacred SINGLE SOURCE OF TRUTH
	attr_accessor :content, :rating
	attr_reader :customer, :restaurant
	@@all = []

	def self.all
		@@all
	end

	def initialize(customer, restaurant, content, rating)
		@customer = customer
		@restaurant = restaurant
		@content = content
  		@rating = rating
		@@all << self
	end

	#these methods are already provided by our handy-dandy attr macros
	#but the README.md asked for them, so here they are.

	# def customer
	# 	@customer
	# end

	# def restaurant
	# 	@restaurant
	# end

	def rating
		#accounts for overzealous customers who submit crazy ratings
  		@rating = 0 if @rating < 0
  		@rating = 5 if @rating > 5
  		@rating
	end

	# def content
	# 	@content
	# end
end
