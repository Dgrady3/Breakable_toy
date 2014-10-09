class Remove < ActiveRecord::Migration
  def up
    drop_table :workout_sessions
    drop_table :categorizations
    drop_table :categories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
