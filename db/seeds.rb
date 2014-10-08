# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# workout
#   Category
#     exercises

 hash = {
  back: ["Lat pulldown", "Low rows", "Pulldowns", "Wide grip pullups"],
  chest: ["Bench press", "Flyes", "Incline bench press", "Decline bench press"],
  arms: ["Tricep cable pushdowns", "Tricep extensions", "Bicep dumbbell curls", "Hammer curls"],
  shoulders: ["Shoulder Press", "Lateral dumbbell raises", "Front dumbbell raises"],
  legs: ["Squats", "Quad extensions", "Hamstring curls", "Calf raises"],
  core: ["Sit ups", "Planks", "Oblique twists", "Medicine ball situps"]
}

hash.each do |c, ex|
  category = Category.find_or_create_by(name: c.to_s.capitalize)

  ex.each do |exc|
    exercise = Exercise.find_or_create_by(name: exc)

    Categorization.find_or_create_by(exercise_id: exercise.id, category_id: category.id)
  end
end
















