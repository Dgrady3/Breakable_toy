require "rails_helper"

describe User do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
  end

  describe 'associations' do
    it { should have_many :workout_sessions}
    it { should have_one :stat}
    it { should have_one :goal}

  end
end
