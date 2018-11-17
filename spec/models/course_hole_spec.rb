require 'rails_helper'

RSpec.describe CourseHole, type: :model do
  it { should belong_to(:course) }
  it { should validate_presence_of(:course) }
  it { should validate_presence_of(:hole_number) }
  it { should validate_presence_of(:yardage) }
  it { should validate_presence_of(:par) }
end
