class Createcategory < ActiveRecord::Migration
  def change
    create_table :category do |t|
      t.string :name, null: false
    end
  end
end
