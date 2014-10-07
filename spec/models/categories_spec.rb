require "rails_helper"

describe Category do

  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'associations' do
    it { should has_many :categorizations }

  end
end
