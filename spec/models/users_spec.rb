require "rails_helper"

describe User do

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
  end

  describe 'associations' do
    it { should have_many :workout_sessions}
    it { should have_many :stats}
    it { should have_many :goals}

  end
end
