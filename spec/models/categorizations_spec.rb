require "rails_helper"

describe Categorization do

  describe 'validations' do
    it { should validate_presence_of :workout_id }
    it { should validate_presence_of :category_id }
  end

  describe 'associations' do
    it { should belong_to :workout }
    it { should belong_to :category }
  end
end
