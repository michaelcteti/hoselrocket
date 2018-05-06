class Course < ApplicationRecord
  validates_uniqueness_of :name, scope: :tees
  validates_presence_of :name, :tees
end
