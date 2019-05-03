require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#declare and initialize Customer objects
andrew = Customer.new("Andrew", "Allen")
andrew_too = Customer.new("Andrew", "Evans")
tez = Customer.new("Montez", "Smith")
hanaa = Customer.new("Hanaa", "Sadoqi")
kingcons = Customer.new("Brit", "Butler")

#declare and initialize Restaurant objects
restaurant_1 = Restaurant.new("The Flatiron Cafe")
restaurant_2 = Restaurant.new("Waffle House")

#customers write some reviews
andrew.add_review(restaurant_1, "It's MEDIOCRE.", 2.5)
andrew.add_review(restaurant_2, "The epitome of class and fanciness.", 5)

tez.add_review(restaurant_1, "Good.", 4.2)
tez.add_review(restaurant_2, "Waffles just like mom used to make!", 5)

hanaa.add_review(restaurant_1, "Perfect!", 5)
hanaa.add_review(restaurant_2, "They obviously don't wash their grill enough.", 1.5)

kingcons.add_review(restaurant_1, "Get me out of this ruby program! It's stuffy in here.", 7555)
kingcons.add_review(restaurant_1, "Seriously, let me out. I'm claustrophobic.", -67)
#brit makes 2 reviews for the same restaurant
#they are both saved in Reviews.all
#the ratings are defaulted to 5 and 0 (when called) for being too high/low

#  ...

#andrew decides to update his review for The Flatiron Cafe
#the method is called with a specific review object because I am too lazy to implement review IDs right now.
andrew.update_review(Review.all[0], "I went back and it was AMAZING this time!", 9999)
#the rating is too high and will default to 5. 
#IE: Review.all[0].rating
		# => 5

binding.pry
0 #leave this here to ensure binding.pry isn't the last line