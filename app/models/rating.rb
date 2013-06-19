class Rating < ActiveRecord::Base
  attr_accessible :is_favourite, :star_rating, :text_rating, :user, :cheese

  validates :star_rating, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 6 } 
  belongs_to :cheese

  belongs_to :user

  after_save :set_average_rating

  def set_average_rating
    self.cheese.average_rating = if self.cheese.ratings.empty?
      0
    else
      (self.cheese.ratings.sum {|r| r.star_rating }.to_f / self.cheese.ratings.count.to_f).round(1)
    end
    self.cheese.save
  end
end
