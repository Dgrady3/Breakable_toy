require "rails_helper"

describe WorkoutSession do

  describe 'associations' do
    it { should belong_to :user }
    it { should belong_to :workout }
  end
end
