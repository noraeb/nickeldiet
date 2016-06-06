class AddFoodgroupRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :foodgroup, index: true, foreign_key: true
  end
end
