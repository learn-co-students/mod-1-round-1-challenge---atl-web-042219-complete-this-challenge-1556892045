require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Review.new("Chris Kalfas", "Silver Slipper", 5, "Best Steak Ever!")
chris = Customer.new("Chris", "Kalfas")
bruce = Customer.new("Bruce", "Wayne")
chicken_palace = Restaurant.new("Chicken Palace")
silver_slipper = Restaurant.new("Silver Slipper")
silver_slipper_rev = chris.add_review("Silver Slipper", "Best Steak in the world!", 5)

chicken_palace_rev = chris.add_review("Chicken Palace", "Fried Plastic Taste", 2)






# spongebob = Student.new("Spongebob")
# patrick = Student.new("Patrick")
 
# puff = Instructor.new("Ms.Puff")
# krabs = Instructor.new("Mr.Krabs")


# scuba_diving = BoatingTest.new(spongebob, "Scuba 101", puff, "pending")
# no_crashing = spongebob.add_boating_test("Don't Crash 101", puff, "pending")
# power_steering_failure = patrick.add_boating_test("Power Steering 202", krabs, "failed")
# power_steering_pass = patrick.add_boating_test("Power Steering 201", krabs, "passed")
# krabs.pass_student(patrick, "Power Steering 201")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line