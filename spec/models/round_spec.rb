require 'rails_helper'

RSpec.describe Round, type: :model do
  it { should belong_to(:course) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:course) }
end
