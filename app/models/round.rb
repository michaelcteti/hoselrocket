class Round < ApplicationRecord
  belongs_to :course
  validates_presence_of :date, :course
end
