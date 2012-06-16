class Product < ActiveRecord::Base
  attr_accessible :amount, :name
  
  validates :amount, :name, :presence => true
end
