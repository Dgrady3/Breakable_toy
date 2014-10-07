require "rails_helper"

describe Exercise do

  describe 'validations' do
    it { should validate_presence_of :name }

  end

  describe 'associations' do
    it { should have_many :workout_exercise_connectors }
  end
end
