class Rental < ActiveRecord::Base
  validates :location, :presence => true
  validates :price, :presence => true
end
