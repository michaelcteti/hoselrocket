require 'rails_helper'

RSpec.describe Hole, type: :model do
  it { should belong_to(:course_hole) }
  it { should validate_presence_of(:course_hole) }
  it { should validate_presence_of(:score) }
  it { should validate_presence_of(:ipd) }
  it { should validate_presence_of(:gir) }
end
