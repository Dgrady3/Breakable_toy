class Createstats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :bench, null: false
      t.string :squat, null: false
      t.string :dead_lift, null: false
      t.string :mile, null: false
      t.integer :user_id, null: false
    end
  end
end
