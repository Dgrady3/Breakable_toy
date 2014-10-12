require "rails_helper"

describe Categorization do


  describe 'associations' do
    it { should belong_to :category }
  end
end
