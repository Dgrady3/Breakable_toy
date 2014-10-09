class Switchcolumns < ActiveRecord::Migration
  def change
    add_column :workouts, :reps, :integer
    add_column :workouts, :sets, :integer
    add_column :workouts, :rest_time, :string
    remove_column :workout_exercise_connectors, :rest_time
    remove_column :workout_exercise_connectors, :sets
    remove_column :workout_exercise_connectors, :reps
  end
end
