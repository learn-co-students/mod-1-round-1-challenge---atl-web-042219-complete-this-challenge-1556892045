require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jojo = Customer.new("Jojo", "Joestar")
dio = Customer.new("Dio", "Brando")
dio2 = Customer.new("Dio", "Smith")
chilis = Restaurant.new("Chili's")
wwc = Restaurant.new("Wild Wing Cafe")
review1 = Review.new(jojo, chilis, "I loved it 10/10", 5)
review2 = jojo.add_review(chilis, "shithole", 0)
review3 = jojo.add_review(wwc, "meh", 5)
review4 = dio.add_review(chilis, "za", 5)
review5 = dio.add_review(wwc, "warudo", 5)
test = jojo.num_reviews
test2 = jojo.reviews
test3 = jojo.restaurants
test4 = chilis.customers
test5 = chilis.reviews
test6 = chilis.average_star_rating
test7 = chilis.longest_review
test8 = Customer.find_all_by_first_name("Dio")
test9 = Customer.all_names
test10 = Restaurant.find_by_name("Chili's")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line