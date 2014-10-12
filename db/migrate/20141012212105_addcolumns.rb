class Addcolumns < ActiveRecord::Migration
  def change
    add_column :stats, :weight, :integer
    add_column :stats, :body_fat, :integer
    add_column :goals, :weight, :integer
    add_column :goals, :body_fat, :integer
  end
end
