class Cheese < ActiveRecord::Base
  attr_accessible :name, :origin_protected, :milk_type, :country, :texture,
    :image_url, :ratings, :user, :cheese
  
  belongs_to :milk_type
  belongs_to :country
  belongs_to :texture
  
  has_many :ratings, :dependent => :destroy
  has_many :users, :through => :ratings
  
  
end
