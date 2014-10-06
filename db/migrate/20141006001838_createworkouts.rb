class Createworkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, null: false
    end
  end
end
