class MilkType < ActiveRecord::Base
  attr_accessible :name, :cheese

  has_many :cheeses

end
