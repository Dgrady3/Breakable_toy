class Createworkoutsessions < ActiveRecord::Migration
  def change
    create_table :workout_sessions do |t|
    t.integer :user_id, null: false
    t.integer :workout_id, null: false
    t.string :date_completed
    t.string :description
    end
  end
end
