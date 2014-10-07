class Change < ActiveRecord::Migration
  def change
    rename_table :category, :categories
  end
end
