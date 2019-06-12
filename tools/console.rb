require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Rand", "James")
customer2 = Customer.new("Hope", "James")
customer3 = Customer.new("Grace", "Hamilton")
customer4 = Customer.new("Grace", "Davis")
Customer.all 

#Customer.all => method

restaurant1 = Restaurant.new("The Smokehouse")
restaurant2 = Restaurant.new("Smoke and a pancake")
restaurant3 = Restaurant.new("A Keg and a Jig")
restaurant4 = Restaurant.new("Smoke and a pancake")
Restaurant.all
#Restaurant.all => method

review1 = Review.new(customer1, restaurant1,"This was good food", 4)
review2 = Review.new(customer2, restaurant2, "Almost like home", 4)
review3 = Review.new(customer2, restaurant1, "Just like nana's, makes you fall asleep", 4.5)
review4 = Review.new(customer1, restaurant3, "Singing all night long", 5)
Review.all
#Review.all => method 

customerAddReview  = customer1.add_review("Shellies", "like moms", 3.5)
customerNumReview = customer2.num_reviews
customerRestaurant = customer2.restaurants
#Customer => Associations and Aggregate Methods

testReviews = restaurant1.reviews
testCustomers = restaurant1.customers
testAvStrRtg = restaurant1.average_star_rating
testLongestReview = restaurant1.longest_review
#Restaurant => Associations and Aggregate Methods

testFindByName =  Customer.find_by_name("Grace Hamilton")
testFindAllByFirstName = Customer.find_all_by_first_name("Grace")
testCustomerAllNames = Customer.all_names
# Customer => Class Methods and Properties


testResturantFindByName = Restaurant.find_by_name("Smoke and a pancake")
# Restaurant => Class Methods and Properties

testForReviewCustomer = review4.customer
testForReviewRestaurant = review4.restaurant
testForReviewRating = review3.rating
testingForReviewContent = review2.content
# Review => Class Methods and Properties
binding.pry

