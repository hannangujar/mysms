class User < ApplicationRecord
    validates :email, presence: true
     
    enum :role, {Student: 0, Staff: 1, Parents: 2}, default: :Student




    has_many :addresses
    has_many :contacts
    has_one  :staff
    has_one :parent
    has_one :student
end
