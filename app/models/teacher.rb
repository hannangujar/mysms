class Teacher < ApplicationRecord
  belongs_to :staff
  has_one :classroom
end
