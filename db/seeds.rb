# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
CATEGORIES = ["Back", "Chest", "Arms", "Shoulders", "Legs", "Core"]

CATEGORIES.each do |c|
  Category.find_or_create_by(name: c)
end
