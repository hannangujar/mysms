class Classroom < ApplicationRecord
  belongs_to :teacher
  has_many :student
end
