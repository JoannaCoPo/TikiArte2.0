require 'rails_helper'

RSpec.describe Director, type: :model do
  describe 'associations' do
    it { should have_many :artists }
    # it { should have_many(:images).through(:artists)}
  end

  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end
