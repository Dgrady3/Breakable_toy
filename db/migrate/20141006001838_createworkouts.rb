class Createworkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :category, null: false
    end
  end
end
