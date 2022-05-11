class Parent < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :address
  has_many :student
end
