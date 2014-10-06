class WorkoutsController < Applicationcontroller

  def index
    @workouts = Workout.all
  end

  def show
  end

end
