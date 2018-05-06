require 'rails_helper'

RSpec.describe Course, type: :model do
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:tees) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:tees) }
end
