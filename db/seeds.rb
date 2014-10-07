# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# workout
#   Category
#     exercises
a, *b = ARGV

binding.pry

 hash = {
  back: ["Lat Pulldown"],
  chest: ["Bench Press"],
  arms: ["Curls"],
  shoulders: ["Shoulder Press"],
  legs: ["Squats"],
  core: ["Sit ups"]
}

hash.each do |c, ex|
  category = Category.find_or_create_by(name: c.to_s.capitalize)

  ex.each do |exc|
    exercise = Exercise.find_or_create_by(name: exc)

    Categorization.find_or_create_by(exercise_id: exercise.id, category_id: category.id)
  end
end

# back.new
# chest.new
# arms.new















