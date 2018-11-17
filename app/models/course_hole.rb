class CourseHole < ApplicationRecord
  belongs_to :course
  validates_presence_of :course, :hole_number, :yardage, :par
end
