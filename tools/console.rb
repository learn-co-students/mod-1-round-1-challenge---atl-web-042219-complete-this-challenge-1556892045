require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
deka = Customer.new("Deka", "Ambia")
fake_deka = Customer.new("Deka", "Cobb")
james = Customer.new("James", "Nocito")
brit = Customer.new("Brit", "Butler")

ruby = Restaurant.new("Ruby's Place")
cobb = Restaurant.new("The Cobb House")
marta = Restaurant.new("MARTA Food Court")

deka_rev = "This place sucked. I'm never coming back"
deka_rev2 = "Nice place, takes time to get in"
james_rev = "This place has the best tacos!"
brit_rev = "I liked it! I'm coming back every day!"

rev1 = deka.add_review(marta, deka_rev, 1)
rev2 = deka.add_review(ruby, deka_rev2, 4)
rev3 = james.add_review(cobb, james_rev, 4)
rev4 = brit.add_review(ruby, brit_rev, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line