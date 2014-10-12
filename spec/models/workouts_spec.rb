require "rails_helper"

describe Workout do

  describe 'associations' do
    it { should have_many :workout_sessions }
    it { should have_many :workout_exercise_connectors }
  end
end
