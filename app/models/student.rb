class Student < ApplicationRecord
  belongs_to :user
  belongs_to :parent
  belongs_to :classroom
end
