require "rails_helper"

describe WorkoutSession do

  describe 'validations' do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :workout_id }
  end

  describe 'associations' do
    it { should belong_to :user}
    it { should belong_to :workout}
  end
end
