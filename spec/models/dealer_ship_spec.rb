require 'rails_helper'

RSpec.describe DealerShip, type: :model do
  describe 'associations' do
    it { should have_many(:cars).dependent(:destroy) }
  end
end