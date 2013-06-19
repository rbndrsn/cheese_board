class Texture < ActiveRecord::Base
  attr_accessible :texture, :cheese

  has_many :cheeses
end
