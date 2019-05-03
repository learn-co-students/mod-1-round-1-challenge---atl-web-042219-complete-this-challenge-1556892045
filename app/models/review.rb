class Review
  attr_accessor :restaurant, :content, :rating
  attr_reader :user
  @@all = []

  def initialize(restaurant, content, rating, user)
    @restaurant = restaurant
    @content = content
    @rating = rating
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    user_who_created_review = ""
    Review.all.each do |review_obj|
      if review_obj == self
        user_who_created_review = review_obj.user
      end
    end
    user_who_created_review
  end

  #works ^

  def restaurant
    self.restaurant
  end


   def rating
     review_rating = nil
     self.all.select do |review_obj|
       review_obj.rating
     end
   end

 #   def content
 #   reviews_content = ''
 #   Review.all.each do |review_obj|
 #     if review_obj == self
 #       reviews_content = review_obj.content
 #     end
 #   end
 #   reviews_content
 # end

end
