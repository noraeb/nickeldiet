class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :products, :created_at
    remove_column :products, :updated_at
  end

  def self.down
    add_column :products, :created_at
    add_column :products, :updated_at
  end

end
