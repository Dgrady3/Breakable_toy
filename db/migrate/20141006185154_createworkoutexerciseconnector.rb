class Createworkoutexerciseconnector < ActiveRecord::Migration
  def change
    create_table :workout_exercise_connectors do |t|
      t.integer :exercise_id, null: false
      t.integer :workout_id, null: false
      t.integer :sets, null: false
      t.integer :reps, null: false
      t.integer :rest_time
    end
  end
end
