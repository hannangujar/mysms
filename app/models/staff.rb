class Staff < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :address
  has_one :teacher,dependent: :destroy

  enum :staff_type, {Admin: 0, Teacher: 1, Castordian: 2,}, default: :Teacher
end
