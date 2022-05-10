class User < ApplicationRecord
    validates :email, presence: true
     
    enum :role, {Student: 0, Staff: 1, Parents: 2}, default: :Student
end
