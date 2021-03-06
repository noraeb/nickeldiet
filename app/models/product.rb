class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :foodgroup

  def self.search(query)
    where("LOWER(name) like ?", "%#{query.downcase}%")
  end
end
