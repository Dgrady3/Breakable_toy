require "rails_helper"

describe WorkoutExerciseConnector do

  describe 'validations' do
    it { should validate_presence_of :exercise_id }
    it { should validate_presence_of :workout_id }
    it { should validate_presence_of :sets }
    it { should validate_presence_of :reps }
  end

  describe 'associations' do
    it { should belong_to :workout }
    it { should belong_to :exercise }
  end
end
