class Country < ActiveRecord::Base
  attr_accessible :description, :flag_url, :name, :cheese
  
  has_many :cheeses
end
