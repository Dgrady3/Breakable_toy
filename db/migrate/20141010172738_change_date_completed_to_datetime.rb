class ChangeDateCompletedToDatetime < ActiveRecord::Migration
  def change
    remove_column :workout_sessions, :date_completed, :string
    add_column :workout_sessions, :date_completed, :date
  end
end
