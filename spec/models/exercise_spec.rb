require "rails_helper"

describe Exercise do

  describe 'associations' do
    it { should have_many :workout_exercise_connectors }
  end
end
