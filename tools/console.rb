require_relative '../config/environment.rb'
require_relative '../lib/customer'
require_relative '../lib/restaurant'
require_relative '../lib/review'
requiure 'pry'

def reload
  load 'config/environment.rb'
end

#Declore and Initialize customer objects
andrew=Customer.new("Andrew","Allen")
andrew_too=Customer.new("Andrew","Evans")
# constructed to test the .find_all_by_first_name method.
tez=Customer.new("Montez"."Smith")
hanaa=Customer.new("Hanaa", "Sadoqi")
kingcon=Customer.new("Brit","Butler")

#Declore and Initialize Restaurant objects

Flatiron=Restaurant.new("The Flatiron Cafe")
Waffle_house=Restaurant.new("Waffle House")

#Customer write some Reviews
andrew.add_review(Flatiron, "It's Mediocre.", 2.5)
andrew_too.add_review(waffle_house, "The epitome of class and fanciness.", 5)
tez.add_review(Flatiron, "Good", 4.2)
tez.add_review(waffle_house,"Waffles just like mom used to make,", 5)
hanaa.add_review(Flatiron, "Perfect", 5)
hanaa.add_review(waffle_house, "They obviously don't wash their grill enough.", 1.5)
kingcons.add_review(Flatiron, "Get me out of this ruby program! It's stuffy in here.", 7555)
kingcons.add_review(Flatiron, "Seroiusly, let me out. I'm claustrophobic.", -67)
# brit makes 2 reviews for the same restaurant.
# they are both saved in Review.all.
# the ratings are defaulted to 5 and 1(when called) for being top high/low.

#andrew decides to update his review for rhe Flatiron Cafe.
#this method is called when a specific review object because I am too lazy to implement review ID's right now.
andrew.update_reviews(Review.all[0], "I went back and it was AMAZING this time!", 9999)
# the rating is too high and will default to 5. #IE: Reviews.all[0].ratings
# => 5






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
