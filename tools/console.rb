require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("FAR")
r2 = Restaurant.new("The Meat Lab")
r3 = Restaurant.new("The Graveyard")

c1 = Customer.new("John", "Dunkirk")
c2 = Customer.new("Joseph", "Browski")
c3 = Customer.new("Yamamoto", "Watakashi")
c4 = Customer.new("Hinata", "Shoyo")
c5 = Customer.new("Kageama", "Tobio")


rr1 = Review.new(c1, r1, 2, "The meats taste like rubber!!!!!!!!!!!")
rr2 = Review.new(c2, r2, 5, "Good meats good price")
rr3 = Review.new(c3, r3, 4, "Good outdoor seating")
rr4 = Review.new(c1, r2, 4, "Goods meats, closes early")
c1.add_review(r1, "There is always the salad bar", 3)

c2 = Customer.new("John", "John")

binding.pry
# r1.longest_review
# r2.longest_review

# r1.average_star_rating
# r2.average_star_rating

# r1.customers
# # *c1
# r2.customers
# # *c1, *c2

# r1.reviews
# 2 *review
# r3.reviews
# 1 *review

# c1.restaurants
# 2
# c2.restaurants
# 1

# c1.num_reviews
# # 2
# c2.num_reviews
# # 1

# c1.reviews
# # return 2 reviews
# c2.reviews
# # return 1 review

# c5.add_review(r1, "There is unlimited food", 4)
# created a new *review for FAR with 4 
# "There is unlimited food", c5

0 #leave this here to ensure binding.pry isn't the last line