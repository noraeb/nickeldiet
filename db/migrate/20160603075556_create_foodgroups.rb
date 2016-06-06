class CreateFoodgroups < ActiveRecord::Migration
  def change
    create_table :foodgroups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
