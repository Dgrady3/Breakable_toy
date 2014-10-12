class AddColumns < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :boolean
    add_column :users, :location, :string
    add_column :users, :occupation, :string
    add_column :users, :gym, :string
    add_column :users, :about, :text
  end
end
