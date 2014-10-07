require "rails_helper"

describe Workout do

  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'associations' do
    it { should have_many :workout_sessions }
    it { should have_many :workout_exercise_connectors }
    it { should have_many :categorizations }
  end
end
