require "rails_helper"

describe WorkoutExerciseConnector do


  describe 'associations' do
    it { should belong_to :workout }
    it { should belong_to :exercise }
  end
end
