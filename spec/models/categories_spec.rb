require "rails_helper"

describe Category do
  describe 'associations' do
    it { should have_many :categorizations }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
  end
end
