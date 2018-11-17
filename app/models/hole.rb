class Hole < ApplicationRecord
  belongs_to :course_hole
  validates_presence_of :course_hole, :score, :ipd, :gir
end
