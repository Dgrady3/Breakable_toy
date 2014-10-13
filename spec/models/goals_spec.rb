require "rails_helper"

describe Goal do

  describe 'validations' do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :bench }
    it { should validate_presence_of :squat }
    it { should validate_presence_of :dead_lift }
    it { should validate_presence_of :mile }
  end

  describe 'associations' do
    it { should belong_to :user }
  end  
end
