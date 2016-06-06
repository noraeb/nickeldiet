class Category < ActiveRecord::Base
  has_many :products
  has_many :foodgroups, :through => :products
end
